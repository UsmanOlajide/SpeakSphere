import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:speaksphere/widgets/constants.dart';

import 'package:speaksphere/widgets/top_section.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  final bool selected = true;

  Widget buildSelection(Color? color, String title, Color? textColor) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 34, top: 7, right: 34, bottom: 4),
        child: Text(
          title,
          style: TextStyle(fontSize: 16, color: textColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 45, right: 45),
                child: Row(
                  children: [
                    TopSection(),
                  ],
                ),
              ),
              const SizedBox(height: 31),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  height: 43,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: colorGrey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6, top: 4, bottom: 4),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: colorWine,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.white,
                      unselectedLabelColor: colorGrey,
                      tabs: const [
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 34, top: 7, right: 20, bottom: 4),
                            child: Text(
                              'Audio Lesson',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 34, top: 7, right: 20, bottom: 4),
                            child: Text(
                              'Video Lesson',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 31),
              const LessonItem(
                bgImage: 'assets/lessonscreen/lesson1.jpeg',
                title: 'First Trip',
                description:
                    'Here you will listen to\nconversations between tourists,\nand learn to speak together with\nthem!',
                svg: 'assets/play1.svg',
              ),
              const SizedBox(height: 35),
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              const LessonItem(
                bgImage: 'assets/lessonscreen/lesson2.png',
                title: 'Freelance Work',
                description:
                    'After taking this classes, you will\nbe able to take orders from\nforeigners!',
                svg: 'assets/play2.svg',
              ),
              const SizedBox(height: 35),
              const LessonItem(
                bgImage: 'assets/lessonscreen/lesson3.jpeg',
                title: 'First Meeting',
                description:
                    'You will learn to communicate\nwith your colleagues and\nunderstand them!',
                svg: 'assets/play3.svg',
              ),
              const SizedBox(height: 35),
              const LessonItem(
                bgImage: 'assets/lessonscreen/lesson4.jpeg',
                title: 'Meeting With Partners',
                description:
                    'You will learn to communicate\nwith your colleagues and\nunderstand them!',
                svg: 'assets/play4.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LessonItem extends StatelessWidget {
  const LessonItem({
    super.key,
    required this.bgImage,
    required this.title,
    required this.description,
    required this.svg,
    // required this.filter,
  });

  final String bgImage;
  final String title;
  final String description;
  final String svg;
  // final ColorFilter filter;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 28),
        child: SizedBox(
          height: 127,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 23,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withAlpha(60),
                          BlendMode.srcOver,
                        ),
                        image: AssetImage(bgImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 82,
                right: 7,
                child: SvgPicture.asset(svg),
              ),
              Positioned(
                top: 11,
                left: 25,
                child: Text(
                  title,
                  style: const TextStyle(
                      height: 0,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              Positioned(
                top: 43,
                left: 27,
                right: 128,
                child: Text(
                  description,
                  style: const TextStyle(
                      height: 0,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//* The initial Lesson Item code in the main body
//  Padding(
//                 padding: const EdgeInsets.only(left: 22, right: 28),
//                 child: Container(
//                   height: 127,
//                   width: double.infinity,
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         bottom: 23,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image.asset(
//                             'assets/firstlesson.jpg',
//                             fit: BoxFit.cover,
//                             // color: colors,
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: 82,
//                         right: 7,
//                         child: SvgPicture.asset('assets/play.svg'),
//                       ),
//                       const Positioned(
//                         top: 11,
//                         left: 25,
//                         child: Text(
//                           'First Trip',
//                           style: TextStyle(
//                               height: 0,
//                               fontSize: 24,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.white),
//                         ),
//                       ),
//                       const Positioned(
//                         top: 43,
//                         left: 27,
//                         right: 128,
//                         child: Text(
//                           'Here you will listen to conversations between tourists, and learn to speak together with them!',
//                           style: TextStyle(
//                               height: 0,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )