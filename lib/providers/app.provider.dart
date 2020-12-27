import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../services/repository.dart';
import '../ui/auth/auth.vm.dart';

/// Repository provider to access repoistory methods.
final appRepositoryProvider = Provider<AppRepository>((ref) => AppRepository());

/// Auth provider to acess authentication state.
final authProvider = StateNotifierProvider<AuthVM>((ref) => AuthVM(ref));
