import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigatorApp extends StateNotifier<int> {
  NavigatorApp(super.state);

  factory NavigatorApp.create(StateProviderRef ref) => NavigatorApp(0);

  void onChangeIndex(int index) {
    state = index;
  }
}
