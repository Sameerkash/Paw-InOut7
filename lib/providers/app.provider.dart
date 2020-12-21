import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../services/repository.dart';
import '../ui/auth/auth.vm.dart';

final appRepositoryProvider = Provider<AppRepository>((ref) => AppRepository());



final authProvider = StateNotifierProvider<AuthVM>((ref) => AuthVM(ref));
