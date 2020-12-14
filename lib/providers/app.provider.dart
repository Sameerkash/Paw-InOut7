import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../services/repository.dart';

final appRepositoryProvider = Provider<AppRepository>((ref) => AppRepository());
