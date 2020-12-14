import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:petme/providers/app.provider.dart';
import 'package:petme/services/repository.dart';

import '../../models/user/user.dart';

part 'auth.vm.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated({AppUser user}) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
}

class AuthVM extends StateNotifier {
  AppRepository repo;

  AuthVM(ProviderReference ref)
      : repo = ref.read(appRepositoryProvider),
        super(AuthState.loading()) {
    repo.auth.authStateChanges().listen(
      (User firebaseUser) {
        if (firebaseUser == null) {
          state = AuthState.unAuthenticated();
          print('User is currently signed out!');
        } else {
          setting(firebaseUser);
          print('User is signed in!');
        }
      },
    );
  }

  void setting(User firebaseUser) async {
    await setUser(firebaseUser: firebaseUser);
  }

  Future<void> setUser({User firebaseUser}) async {
    final result =
        await repo.setUser(firebaseUser: firebaseUser, uid: firebaseUser.uid);

    if (result) {
      final user = await repo.getLoggedInUser();
      state = AuthState.authenticated(user: user);
    }
  }

  Future<Either<String, bool>> signInWithEmail(
      {@required Map<String, dynamic> form}) async {
    final res = await repo.signInWithEmail(
        email: form['email'], password: form['password']);

    return res;
  }

  ///
  Future<Either<String, bool>> signUpWithEmail(
      Map<String, dynamic> form) async {
    final res = await repo.createUserwithEmail(
        email: form['email'], name: form['name'], password: form['password']);

    return res;
  }

  Future<void> googleSignIn() async {
    await repo.signInWithGoogle();
  }

  Future<void> signOut() async {
    await repo.signOut();
  }
}
