import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sembast/sembast.dart';

import '../models/user/user.dart';
import 'database.dart';

class AppRepository {
  /// Cloud Firestore instance
  final firestore = FirebaseFirestore.instance;

  /// Firebase Auth instance
  final auth = FirebaseAuth.instance;

  /// Local Sembast instance
  final Future<Database> _db = AppDatabase.instance.database;
  final _store = stringMapStoreFactory.store('common_store');
  static const USERKEY = 'userkey';

  /// Sign In with Google Auth
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await auth.signInWithCredential(credential);
  }

 /// Create user with Email and Password
  Future<Either<String, bool>> createUserwithEmail(
      {String email, String password, String name}) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      final user = AppUser(
        userId: userCredential.user.uid,
        email: email,
        userName: name,
      );

      await firestore
          .collection('users')
          .doc(userCredential.user.uid)
          .set(user.toJson());

      await _store.record(USERKEY).put(await _db, user.toJson(), merge: true);

      return right(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return left('An account already exists for that email.');
      }
      return left(e.toString());
    } catch (e) {
      print(e);
      return left(e.toString());
    }
  }

  /// SignIn with Email and Password verification
  ///
  Future<Either<String, bool>> signInWithEmail({String email, password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      return right(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left('No user found for that email, try again');
      } else if (e.code == 'wrong-password') {
        return left('The credentials do not match, try again');
      }
      return left(e.toString());
    }
  }

  Future<bool> setUser({String uid, User firebaseUser}) async {
    try {
      final result = await firestore.collection('users').doc(uid).get();
      if (result.exists) {
        /// Save to Local Storage
        await _store.record(USERKEY).put(await _db, result.data(), merge: true);

        return true;
      } else {
        final user = AppUser(
          userId: uid,
          email: firebaseUser.email,
          userName: firebaseUser.displayName,
          phone: firebaseUser.phoneNumber,
          imageUrl: firebaseUser.photoURL,
        );

        /// Save to firebase
        await firestore.collection('users').doc(uid).set(user.toJson());

        /// Save to local Storage
        await _store.record(USERKEY).put(await _db, user.toJson(), merge: true);

        return true;
      }
    } catch (e) {
      print("$e");
      return false;
    }
  }

  /// Get the current Logged In user
  Future<AppUser> getLoggedInUser() async {
    try {
      final user = await _store.record(USERKEY).get(await _db);
      print(user);
      final appuser = AppUser.fromJson(user);
      return appuser;
    } catch (e) {
      print(e);
      return null;
    }
  }

  /// Sign out of the App
  Future<void> signOut() async {
    final res = await _store.record(USERKEY).delete(await _db);
    print(res);
    await GoogleSignIn().signOut();
    await auth.signOut();
  }
}
