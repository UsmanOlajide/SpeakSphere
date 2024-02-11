import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speaksphere/widgets/button.dart';
import 'package:speaksphere/widgets/button_section.dart';
import 'package:speaksphere/widgets/constants.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 71,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: SvgPicture.asset('assets/marks.svg')),
                        Text(
                          '2',
                          style: GoogleFonts.josefinSans(
                            height: 0,
                            fontSize: 128,
                            fontWeight: FontWeight.w500,
                            color: colorWine,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14.87),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'days streak!',
                        style: GoogleFonts.josefinSans(
                          // height: 0,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/homescreen/flames.svg',
                        height: 17.39,
                        width: 13.63,
                      ),
                    ],
                  ),
                  const SizedBox(height: 61),
                  const DaysSection(),
                ],
              ),
              const SizedBox(height: 131),
              Button(
                color: colorWine,
                textColor: Colors.white,
                title: 'Continue',
                onTap: () => GoRouter.of(context).pop(),
              ),
              Button(
                color: backgroundColor,
                textColor: colorWineText,
                title: 'Share',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DaysSection extends StatelessWidget {
  const DaysSection({
    super.key,
  });

  Widget buildDays(String title,
      [Color? color = colorGrey, ColorFilter? filter]) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, color: color),
        ),
        SvgPicture.asset(
          'assets/greymarks.svg',
          colorFilter: filter,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 149,
      padding: const EdgeInsets.only(top: 27, right: 28, left: 11),
      decoration: BoxDecoration(
        color: semiBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              buildDays('Mon', colorWine,
                  const ColorFilter.mode(colorWine, BlendMode.srcIn)),
              const SizedBox(width: 26),
              buildDays('Tue', colorWine,
                  const ColorFilter.mode(colorWine, BlendMode.srcIn)),
              const SizedBox(width: 26),
              buildDays('Wed'),
              const SizedBox(width: 26),
              buildDays('Thur'),
              const SizedBox(width: 26),
              buildDays('Fri'),
              const SizedBox(width: 26),
              buildDays('Sat'),
            ],
          ),
          const SizedBox(height: 25.06),
          const Padding(
            padding: EdgeInsets.only(left: 19, right: 8),
            child: Text(
              'You’re on a roll, great job! Practice each day to keep up with your streak and earn XP points.',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
