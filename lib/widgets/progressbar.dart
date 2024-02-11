import 'package:flutter/material.dart';
import 'package:speaksphere/widgets/constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.progress,
    required this.total,
    required this.width,
    required this.height,
  });

  final double progress;
  final double total;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProgressBarItem(
          width: width,
          color: colorGrey,
          height: height,
        ), 
        ProgressBarItem(
          width: width * progress / total,
          color: colorWine,
          height: height,
        ),
      ],
    );
    // return Expanded(
    //   child: LayoutBuilder(builder: (_, constraints) {
    //     final width = constraints.maxWidth;
    //     return Stack(
    //       children: [
    //         ProgressBarItem(width: width, color: colorGrey),
    //         ProgressBarItem(width: width * progress / total, color: colorWine),
    //       ],
    //     );
    //   }),
    // );
  }
}

class ProgressBarItem extends StatelessWidget {
  const ProgressBarItem(
      {super.key,
      required this.width,
      required this.color,
      required this.height});
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
