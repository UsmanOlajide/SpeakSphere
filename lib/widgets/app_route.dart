import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/screens/%20interests_screen.dart';
import 'package:speaksphere/screens/home_screen.dart';
import 'package:speaksphere/screens/splash_screen.dart';
import 'package:speaksphere/screens/streak_screen.dart';
import 'package:speaksphere/screens/tabs_screen.dart';

enum AppRoute {
  splash('/splash'),
  interests('/'),
  tabs('/tabs'),
  home('/home'),
  streak('/streak'),
  lesson('/lesson');

  final String path;
  const AppRoute(this.path);
}

final class AppRouter {
  //--- SINGLETON

  static final AppRouter _instance = AppRouter._internal();
  static AppRouter get instance => _instance;
  // factory AppRouter() => _instance;
  AppRouter._internal();

  //---
  GoRouter router() {
    return GoRouter(
      initialLocation: AppRoute.splash.path,
      routes: [
        GoRoute(
          path: AppRoute.splash.path,
          name: AppRoute.splash.name,
          builder: (context, state) =>  SplashScreen(),
        ),
        GoRoute(
          path: AppRoute.interests.path,
          name: AppRoute.interests.name,
          builder: (context, state) => const InterestsScreen(),
        ),
        GoRoute(
          path: AppRoute.tabs.path,
          name: AppRoute.tabs.name,
          builder: (context, state) => const TabsScreen(),
        ),
        GoRoute(
          path: AppRoute.home.path,
          name: AppRoute.home.name,
          builder: (context, state) => HomeScreen(),
        ),
        GoRoute(
          path: AppRoute.streak.path,
          name: AppRoute.streak.name,
          builder: (context, state) => const StreakScreen(),
        ),
      ],
    );
  }
}
