import 'package:auto_route/auto_route.dart';
import 'package:dqu/pages/day/day_page.dart';
import 'package:flutter/material.dart';

import '../pages/home/home_page.dart';
import '../pages/main/main_page.dart';
import '../pages/night/night_page.dart';

part 'routers.gr.dart';

@AdaptiveAutoRouter(routes: [
  AutoRoute(
    path: '/',
    page: MainPage,
    initial: true,
    children: [
      AutoRoute(path: 'welcome', page: HomePage, initial: true),
      AutoRoute(path: 'day', page: DayPage),
      AutoRoute(path: 'night', page: NightPage)
    ],
  ),
], replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {}
