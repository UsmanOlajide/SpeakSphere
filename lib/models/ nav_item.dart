import 'package:flutter_svg/svg.dart';

class NavItem {
  NavItem({
    required this.title,
    required this.svg,
    required this.svgActive,
  });

  final String title;
  final SvgPicture svg;
  final SvgPicture svgActive;
}

List<NavItem> navItems = [
  NavItem(
    title: 'Home',
    svg: SvgPicture.asset('assets/navigationbar/houseicon.svg'),
    svgActive: SvgPicture.asset('assets/navigationbar/houseiconactive.svg'),
  ),
  NavItem(
    title: 'Lesson',
    svg: SvgPicture.asset('assets/navigationbar/lessonicon.svg'),
    svgActive: SvgPicture.asset('assets/navigationbar/lessoniconactive.svg'),
  ),
  NavItem(
    title: 'Exercises',
    svg: SvgPicture.asset('assets/navigationbar/exercisesicon.svg'),
    svgActive: SvgPicture.asset('assets/navigationbar/exercisesiconactive.svg'),
  ),
  NavItem(
    title: 'Games',
    svg: SvgPicture.asset('assets/navigationbar/gameicon.svg'),
    svgActive: SvgPicture.asset('assets/navigationbar/gameiconactive.svg'),
  ),
  NavItem(
    title: 'Chats',
    svg: SvgPicture.asset('assets/navigationbar/chaticon.svg'),
    svgActive: SvgPicture.asset('assets/navigationbar/chaticonactive.svg'),
  )
];
