import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speaksphere/models/activites.dart';
import 'package:speaksphere/models/activity.dart';
import 'package:speaksphere/screens/speaking_screen.dart';
import 'package:speaksphere/screens/streak_screen.dart';
import 'package:speaksphere/widgets/app_route.dart';
import 'package:speaksphere/widgets/constants.dart';
import 'package:speaksphere/widgets/griditem.dart';
import 'package:speaksphere/widgets/progressbar.dart';
import 'package:speaksphere/widgets/top_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final titleList = <String>['gaming', 'sweeping', 'eating', 'coding'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 19.0, right: 17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TopSection(),
                  const SizedBox(width: 18.0),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: memojiColor,
                    ),
                    child: Image.asset('assets/face.png'),
                  ),
                  // Expanded(child: SvgPicture.asset('assets/11.svg')),
                ],
              ),
              // Row(
              //   children: [SvgPicture.asset('assets/frame.svg')],
              // )
              const SizedBox(height: 42),
              const Text(
                'Your',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: colorWineText),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Learning Sphere',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: colorWineText),
                  ),
                  // SvgPicture.asset('assets/filter.png')
                  SvgPicture.asset('assets/filter.svg')
                ],
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(top: 36),
                  itemCount: activities.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 37,
                    mainAxisSpacing: 36,
                  ),
                  itemBuilder: (_, i) {
                    if (i == 3) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) {
                              return const SpeakingScreen();
                            }),
                          );
                        },
                        child: GridItem(
                          svg: activities[i].svg,
                          title: activities[i].title,
                          progress: activities[i].progress,
                        ),
                      );
                    } else {
                      return GridItem(
                        svg: activities[i].svg,
                        title: activities[i].title,
                        progress: activities[i].progress,
                      );
                    }
                  },
                ),
              )
              // Expanded(
              //   child: GridView.builder(
              //     padding: const EdgeInsets.only(top: 36),
              //     itemCount: activities.length,
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 37,
              //       mainAxisSpacing: 36,
              //     ),
              //     itemBuilder: (_, i) {
              //       return GridItem(
              //         svg: activities[i].svg,
              //         title: activities[i].title,
              //         progress: activities[i].progress,
              //       );
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}




//* container
//* title
//* progress
//* progress bar