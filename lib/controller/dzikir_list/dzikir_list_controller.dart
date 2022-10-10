import 'package:dqu/models/dzikir.dart';
import 'package:dqu/repository/dzikir_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DzikirListController extends StateNotifier<List<Dzikir>> {
  DzikirListController(super.state, this.dzikirRepository);

  final DzikirRepository dzikirRepository;
  final Map<String, List<Dzikir>> dzikirGroupByType = {};

  void onDzikirDay() {
    if (dzikirGroupByType.containsKey('days')) {
      final dzikirGroups = dzikirGroupByType['days'] ?? List.empty();
      state = dzikirGroups;
    } else {
      final dzikrGroups = dzikirRepository.onGetDzikirList();
      final dzikirDayList =
          dzikrGroups.where((element) => element.isDay ?? false).toList();
      dzikirGroupByType.putIfAbsent('days', () => dzikirDayList);
      state = dzikirDayList;
    }
  }

  void onAfternoonDzikir() {
    if (dzikirGroupByType.containsKey('night')) {
      final dzikirGroups = dzikirGroupByType['night'] ?? List.empty();
      state = dzikirGroups;
    } else {
      final dzikirGroups = dzikirRepository.onGetDzikirList();
      final afternoonDzikir =
          dzikirGroups.where((element) => element.isNight ?? false).toList();
      dzikirGroupByType.putIfAbsent('night', () => afternoonDzikir);
      state = afternoonDzikir;
    }
  }
}
