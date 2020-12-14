import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/user/user.dart';
part 'auth.vm.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated({AppUser user}) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
}

class AuthVM extends StateNotifier {
  AuthVM() : super(AuthState.loading());
}
