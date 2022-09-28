import 'package:dqu/models/dzikir.dart';
import 'package:dqu/repository/dzikir_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DzikirListController extends StateNotifier<List<Dzikir>> {
  DzikirListController(super.state, this.dzikirRepository);

  final DzikirRepository dzikirRepository;

  void onDzikirDay() {
    final dzikrGroups = dzikirRepository.onGetDzikirList();
    final dzikirDayList =
        dzikrGroups.where((element) => element.isDay ?? false).toList();
    state = dzikirDayList;
  }

  void onAfternoonDzikir() {
    final dzikirGroups = dzikirRepository.onGetDzikirList();
    final afternoonDzikir =
        dzikirGroups.where((element) => element.isNight ?? false).toList();
    state = afternoonDzikir;
  }
}
