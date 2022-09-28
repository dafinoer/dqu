import 'package:dqu/component/routers.dart';
import 'package:dqu/controller/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

import 'controller/observer/controller_observer.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        ControllerObserver(Logger(printer: PrettyPrinter(colors: true)))
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final _appRoute = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ref.watch(darkModeProvider)
          ? ThemeData.dark(useMaterial3: true).copyWith(
              textTheme: GoogleFonts.notoSansTextTheme()
                  .apply(bodyColor: Colors.white))
          : ThemeData.light(useMaterial3: true)
              .copyWith(textTheme: GoogleFonts.notoSansTextTheme()),
      routerDelegate: _appRoute.delegate(),
      routeInformationParser: _appRoute.defaultRouteParser(),
    );
  }
}
