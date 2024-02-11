import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speaksphere/widgets/constants.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  var currentIndex = 0;

  final listOfSvgIcons = [
    'assets/navigationbar/houseicon.svg',
    'assets/navigationbar/lessonicon.svg',
    'assets/navigationbar/exercisesicon.svg',
    'assets/navigationbar/gameicon.svg',
    'assets/navigationbar/chaticon.svg',
  ];

  final listOfActiveSvgIcons = [
    'assets/navigationbar/houseiconactive.svg',
    'assets/navigationbar/lessoniconactive.svg',
    'assets/navigationbar/exercisesiconactive.svg',
    'assets/navigationbar/gameiconactive.svg',
    'assets/navigationbar/chaticonactive.svg',
  ];

  Widget buildItem(String svg, String title) {
    return Column(
      children: [
        SvgPicture.asset(svg),
        Text(
          title,
          style: const TextStyle(color: colorWine, fontSize: 11, height: 0),
        )
      ],
    );
  }

  @override
  //*
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              // width: 300,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      bottom: index == currentIndex ? 0 : size.width * .029,
                      right: size.width * .0422,
                      left: size.width * .0422,
                    ),
                    width: 30,
                    height: index == currentIndex ? 3 : 0,
                    decoration: BoxDecoration(
                      color: colorWine,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    listOfSvgIcons[index],

                    // color: index == currentIndex
                    //     ? Colors.blueAccent
                    //     : Colors.black38,
                  ),
                  SizedBox(height: size.width * .03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
}

// Widget build(BuildContext context) {
//   return
//       // Container(
//       //   height: 47,
//       //   padding: const EdgeInsets.only(left: 31, top: 9, right: 27),
//       //   decoration: const BoxDecoration(
//       //     color: backgroundColor,
//       //     boxShadow: [
//       //       BoxShadow(
//       //         blurRadius: 4,
//       //         color: dropShadow,
//       //         offset: Offset(0, -4),
//       //       )
//       //     ],
//       //   ),
//       Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       buildItem('assets/navigationbar/houseiconactive.svg', 'Home'),
//       const SizedBox(width: 40),
//       buildItem('assets/navigationbar/lessoniconactive.svg', 'Lesson'),
//       const SizedBox(width: 40),
//       buildItem('assets/navigationbar/exercisesiconactive.svg', 'Exercises'),
//       const SizedBox(width: 40),
//       buildItem('assets/navigationbar/gameiconactive.svg', 'Games'),
//       const SizedBox(width: 40),
//       buildItem('assets/navigationbar/chaticonactive.svg', 'Chats'),
//     ],
//   );
//   // child: ListView.builder(
//   //   scrollDirection: Axis.horizontal,
//   //   itemCount: 5,
//   //   padding: EdgeInsets.only(left: 31, top: 9, right: 27),
//   //   itemBuilder: (context, index) {
//   //     return InkWell(
//   //       onTap: () {
//   //         setState(() {
//   //           currentIndex = index;
//   //         });
//   //       },
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //         children: [
//   //           AnimatedContainer(
//   //             duration: Duration(milliseconds: 1500),
//   //             curve: Curves.fastLinearToSlowEaseIn,
//   //             decoration: BoxDecoration(
//   //                 borderRadius:
//   //                     BorderRadius.vertical(bottom: Radius.circular(10))),
//   //           ),
//   //           SvgPicture.asset(currentIndex == index
//   //               ? listOfActiveSvgIcons[index]
//   //               : listOfSvgIcons[index]),
//   //         ],
//   //       ),
//   //     );
//   //   },
//   // ),
// }
