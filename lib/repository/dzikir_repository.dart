import 'package:dqu/component/dzikir_data.dart';
import 'package:dqu/models/dzikir.dart';

class DzikirRepository {
  List<Dzikir> onGetDzikirList() {
    final result = dzikirData.map((e) => Dzikir.fromJson(e)).toList();
    return result;
  }
}
