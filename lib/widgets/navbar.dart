//* It is complete
//* SCOPE: I built a navItem widget and arranged it in a roww SIMPLE !

import 'package:flutter/material.dart';
import 'package:speaksphere/models/%20nav_item.dart';
import 'package:speaksphere/widgets/constants.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key, required this.buildNavItem, });

  final Function(int index) buildNavItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: dropShadow,
            blurRadius: 4,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildNavItem(0),
            const SizedBox(width: 40),
            buildNavItem(1),
            const SizedBox(width: 40),
            buildNavItem(2),
            const SizedBox(width: 40),
            buildNavItem(3),
            const SizedBox(width: 40),
            buildNavItem(4)
          ],
        ),
      ),
    );
  }
}





//* Take the code of the YoutubeNav and modify it to my own
//* It was almost complete but the navs couldn't fit the overall container width properly
//* SCOPE: I used a listviewbuilder and set scroll direction to horizontal

// import 'package:flutter/material.dart';
// import 'package:speaksphere/models/%20nav_item.dart';
// import 'package:speaksphere/widgets/constants.dart';

// class TestNavScreen extends StatefulWidget {
//   const TestNavScreen({super.key});

//   @override
//   TestNavScreenState createState() => TestNavScreenState();
// }

// class TestNavScreenState extends State<TestNavScreen> {
//   var currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: SafeArea(
//         child: Container(
//           // margin: EdgeInsets.all(20),
//           height: 45,
//           padding: const EdgeInsets.only(left: 30, right: 27),
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: dropShadow,
//                 blurRadius: 4,
//                 offset: Offset(0, -4),
//               ),
//             ],
//           ),
//           child: ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: navItems.length,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index) => InkWell(
//               onTap: () {
//                 setState(
//                   () {
//                     currentIndex = index;
//                   },
//                 );
//               },
//               splashColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 40),
//                 child: Column(
//                   children: [
//                     AnimatedContainer(
//                       duration: const Duration(milliseconds: 500),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       width: 30,
//                       height: 3,
//                       decoration: BoxDecoration(
//                         color: index == currentIndex ? colorWine : Colors.white,
//                         borderRadius: const BorderRadius.vertical(
//                           bottom: Radius.circular(10),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     index == currentIndex
//                         ? Expanded(child: navItems[index].svgActive)
//                         : Expanded(child: navItems[index].svg),
//                     Text(
//                       navItems[index].title,
//                       style: TextStyle(
//                           height: 0,
//                           fontSize: 11,
//                           color: index == currentIndex ? colorWine : colorGrey),
//                     ),
//                     const SizedBox(height: 2.5),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
