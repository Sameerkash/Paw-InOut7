import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:petme/models/common/adoption.dart';
import 'package:sembast/sembast.dart';
import 'package:path/path.dart' as path;
import '../models/user/user.dart';
import 'database.dart';

class AppRepository {
  /// GeoLocator Instance
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  /// Geostore instance
  final geo = Geoflutterfire();

  /// Cloud Firestore instance
  final firestore = FirebaseFirestore.instance;

  /// Firebase Auth instance
  final auth = FirebaseAuth.instance;

  ///Firebase storage instance.
  final firebaseStorage = FirebaseStorage.instance.ref();

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

  Future<AppUser> getUserProfile() async {
    final user = getLoggedInUser();
    return user;
  }

  /// update proileImage of a user
  Future<AppUser> updateImage(File image, String uid) async {
    try {
      var fileExtension = path.extension(image.path);
      final storageRefrence = firebaseStorage.child('users/$uid$fileExtension');

      await storageRefrence.putFile(image).catchError((err) {
        print(err);
        return;
      });
      String url = await storageRefrence.getDownloadURL();

      await firestore.collection('users').doc(uid).update({'imageUrl': url});

      final user = await firestore.collection('users').doc(uid).get();

      final u =
          await _store.record(USERKEY).put(await _db, user.data(), merge: true);

      return AppUser.fromJson(u);
    } catch (e) {
      print(e);
      return null;
    }
  }

  /// update Profile details of user
  Future<AppUser> updateUserProfile(AppUser user, String uid) async {
    try {
      await firestore.collection('users').doc(uid).update(user.toJson());

      final us = await firestore.collection('users').doc(uid).get();

      final u =
          await _store.record(USERKEY).put(await _db, us.data(), merge: true);

      return AppUser.fromJson(u);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> adoptionForm(String uid, Adoption adoptionForm) async {
    //to get user current location
    // GeoFirePoint _myLocation = await _getCurrentLocation();
  }

  /// Get adoption list from nearby locations.
  Stream<List<Adoption>> adoptionList(double radius) async* {
    try {
      List<Adoption> availableAdoptions = [];

      final GeoFirePoint _myLocation = await _getCurrentLocation();
      String field = 'location';
      GeoFirePoint center = geo.point(
          latitude: _myLocation.latitude, longitude: _myLocation.longitude);
      var collectionReference = firestore.collection('adoption');

      geo
          .collection(collectionRef: collectionReference)
          .within(center: center, radius: radius, field: field)
          .listen((List<DocumentSnapshot> docs) {
        docs.forEach((d) {
          Adoption a = Adoption.fromJson(d.data());
          a.copyWith(distance: d.data()['distance']);

          availableAdoptions.add(a);
        });
      });

      yield availableAdoptions;
    } catch (e) {
      print(e);
      yield null; //TODO: Replace with either
    }
  }

  Future<GeoFirePoint> _getCurrentLocation() async {
    try {
      double latitude, longitude;

      final position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude;
      longitude = position.longitude;
      GeoFirePoint myLocation =
          geo.point(latitude: latitude, longitude: longitude);

      return myLocation;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
