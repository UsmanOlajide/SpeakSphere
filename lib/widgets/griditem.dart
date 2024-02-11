import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class GridItem extends StatelessWidget {
  GridItem({
    super.key,
    required this.title,
    required this.svg,
    required this.progress,
    // required this.onTapp,
  });

  final SvgPicture svg;
  final String title;
  final Widget progress;
  var selectedIndex = 0;
  // final void Function() onTapp;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(color: gridColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            svg,
            const SizedBox(height: 7),
            Text(
              title,
              style: const TextStyle(
                // height: 0,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
                height:
                    6), //It's either I use and follow the design without spaceEvenly
            // Text(
            //   'You completed',
            //   style: const TextStyle(
            //     color: progressColor,
            //     fontSize: 13,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            // const SizedBox(height: 6),
            progress,
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
