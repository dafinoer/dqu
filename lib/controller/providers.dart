import 'package:dqu/repository/dzikir_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/dzikir.dart';
import 'dzikir_list/dzikir_list_controller.dart';

final navigationBarProvider = StateProvider<int>((ref) => 0);
final darkModeProvider = StateProvider<bool>((ref) => false);
final dzikirRepositoryProvider = Provider((ref) => DzikirRepository());
final dzikrListProvider =
    StateNotifierProvider<DzikirListController, List<Dzikir>>((ref) {
  final repository = ref.watch(dzikirRepositoryProvider);
  return DzikirListController([], repository);
});
