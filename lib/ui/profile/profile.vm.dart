import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

import '../../models/user/user.dart';
import '../../providers/app.provider.dart';
import '../../services/repository.dart';

part 'profile.vm.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded({AppUser profile}) = _Loaded;
  const factory ProfileState.error({String error}) = _Error;
}

class ProfileVM extends StateNotifier<ProfileState> {
  ProfileVM(ProviderReference ref)
      : repo = ref.read(appRepositoryProvider),
        super(ProfileState.loading()) {
    getUserProfile();
  }

  final AppRepository repo;

  Future<void> getUserProfile() async {
    final curState = state;
    if (curState is _Loading) {
      final profile = await repo.getUserProfile();

      state = ProfileState.loaded(profile: profile);
    }
  }

  Future<void> updateImage(File image) async {
    final curState = state;
    if (curState is _Loaded) {
      final newProfile = await repo.updateImage(image, curState.profile.userId);
      print(newProfile);
      state = ProfileState.loaded(profile: newProfile);
    }
  }

  Future<void> updateProfile(Map<String, dynamic> form) async {
    final curState = state;
    if (curState is _Loaded) {
      final user = AppUser(
          userId: curState.profile.userId,
          userName: form['name'],
          bio: form['bio'],
          email: form['email'],
          adress: form['address'],
          imageUrl: curState.profile.imageUrl,
          phone: form['phone']);

      final newProfile = await repo.updateUserProfile(user, user.userId);

      state = ProfileState.loaded(profile: newProfile);
    }
  }
}
