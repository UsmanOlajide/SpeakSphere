import 'package:flutter/material.dart';
import 'package:speaksphere/screens/comin_screen.dart';
import 'package:speaksphere/screens/tabs_screen.dart';
import 'package:speaksphere/screens/home_screen.dart';
import 'package:speaksphere/screens/lesson_screen.dart';
import 'package:speaksphere/screens/speaking_screen.dart';
import 'package:speaksphere/screens/streak_screen.dart';
import 'package:speaksphere/widgets/navbar.dart';
import 'package:speaksphere/screens/testscreen.dart';
import 'package:speaksphere/widgets/app_route.dart';
import 'package:speaksphere/widgets/constants.dart';
import 'package:speaksphere/widgets/customnavbar.dart';
import 'screens/ interests_screen.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = AppRouter.instance.router();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(),
        // OR textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        colorScheme:
            Theme.of(context).colorScheme.copyWith(background: backgroundColor),
        useMaterial3: true,
      ),
      // home: const InterestsScreen(),

      // return MaterialApp(
      //   title: 'Flutter Demo',
      //   theme: ThemeData(
      //     textTheme: GoogleFonts.josefinSansTextTheme(),
      //     // OR textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
      //     colorScheme:
      //         Theme.of(context).colorScheme.copyWith(background: backgroundColor),
      //     useMaterial3: true,
      //   ),
      //   home: SplashScreen(),
    );
  }
}
