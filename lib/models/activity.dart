import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Activity {
  Activity(
     {
    required this.id,
    required this.svg,
    required this.title,
    required this.progress,
    // required this.percent,
  });

  final int id;
  final SvgPicture svg;
  final String title;
  final Widget progress;
  // final int percent;
}
