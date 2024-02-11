import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speaksphere/models/%20nav_item.dart';
import 'package:speaksphere/screens/comin_screen.dart';
import 'package:speaksphere/screens/home_screen.dart';
import 'package:speaksphere/screens/lesson_screen.dart';
import 'package:speaksphere/screens/speaking_screen.dart';
import 'package:speaksphere/widgets/navbar.dart';
import 'package:speaksphere/widgets/constants.dart';
import 'package:speaksphere/widgets/customnavbar.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var currentIndex = 0;

  final tabs = [
    HomeScreen(),
    const LessonScreen(),
    const ComingScreen(),
    const ComingScreen(),
    const ComingScreen(),
  ];

  Widget buildNavItem(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
            width: 30,
            height: 3,
            decoration: BoxDecoration(
              color: index == currentIndex ? colorWine : backgroundColor,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 6),
          index == currentIndex
              ? Expanded(child: navItems[index].svgActive)
              : Expanded(child: navItems[index].svg),
          Text(
            navItems[index].title,
            style: TextStyle(
                height: 0,
                fontSize: 11,
                color: index == currentIndex ? colorWine : colorGrey),
          ),
          const SizedBox(height: 2.5),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: SafeArea(child: NavBar(buildNavItem: buildNavItem)),
    );
  }
}

// child: BottomNavigationBar(
//   elevation: 0,
//   selectedFontSize: 11,
//   selectedItemColor: colorWine,
//   type: BottomNavigationBarType.fixed,
//   currentIndex: currentIndex,
//   onTap: (index) {
//     setState(() {
//       currentIndex = index;
//     });
//   },
//   items: [
//     BottomNavigationBarItem(
//       icon: SvgPicture.asset('assets/navigationbar/houseicon.svg'),
//       activeIcon: SvgPicture.asset(
//           'assets/navigationbar/houseiconactive.svg'),
//       label: 'Home',
//     ),
//     BottomNavigationBarItem(
//       icon: SvgPicture.asset('assets/navigationbar/lessonicon.svg'),
//       activeIcon: SvgPicture.asset(
//           'assets/navigationbar/lessoniconactive.svg'),
//       label: 'Lesson',
//     ),
//     BottomNavigationBarItem(
//       icon: SvgPicture.asset(
//           'assets/navigationbar/exercisesicon.svg'),
//       activeIcon: SvgPicture.asset(
//           'assets/navigationbar/exercisesiconactive.svg'),
//       label: 'Exercises',
//     ),
//     BottomNavigationBarItem(
//       icon: SvgPicture.asset('assets/navigationbar/gameicon.svg'),
//       activeIcon: SvgPicture.asset(
//           'assets/navigationbar/gameiconactive.svg'),
//       label: 'Games',
//     ),
//     BottomNavigationBarItem(
//       icon: SvgPicture.asset('assets/navigationbar/chaticon.svg'),
//       activeIcon: SvgPicture.asset(
//           'assets/navigationbar/chaticonactive.svg'),
//       label: 'Chats',
//     ),
//   ],
// ),
