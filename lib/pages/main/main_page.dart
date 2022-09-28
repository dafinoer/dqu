import 'package:auto_route/auto_route.dart';
import 'package:dqu/component/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dqu/controller/providers.dart';

import '../day/day_page.dart';

part 'desktop_mode.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(navigationBarProvider, (previous, next) {
      if (next == 0) {
        ref.read(dzikrListProvider.notifier).onDzikirDay();
        context.navigateTo(const MainRoute(children: [DayRoute()]));
      } else if (next == 1) {
        ref.read(dzikrListProvider.notifier).onAfternoonDzikir();
        context.navigateTo(const MainRoute(children: [NightRoute()]));
      }
    });

    return const DesktopModeWidget();
  }
}
