import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../ui/auth/auth.vm.dart';

import '../services/repository.dart';

final appRepositoryProvider = Provider<AppRepository>((ref) => AppRepository());



final authProvider = StateNotifierProvider<AuthVM>((ref) => AuthVM(ref));
