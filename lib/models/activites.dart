import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speaksphere/models/activity.dart';
import 'package:speaksphere/widgets/constants.dart';
import 'package:speaksphere/widgets/progressbar.dart';

final activities = <Activity>[
  Activity(
    svg: SvgPicture.asset('assets/openbook.svg'),
    title: 'Reading',
    progress: ActivityProgressBar(progress: 5, total: 10, rawPercent: 50), id: 1,
  ),
  Activity(
    svg: SvgPicture.asset('assets/headphone.svg'),
    title: 'Listening',
    progress: ActivityProgressBar(progress: 5, total: 10, rawPercent: 50), id: 2
  ),
  Activity(
    svg: SvgPicture.asset('assets/writing.svg'),
    title: 'Writing',
    progress: ActivityProgressBar(progress: 7, total: 10, rawPercent: 70), id: 3
  ),
  Activity(
    svg: SvgPicture.asset('assets/speaking.svg'),
    title: 'Speaking',
    progress: ActivityProgressBar(progress: 2.5, total: 10, rawPercent: 25), id: 4
  ),
  Activity(
    svg: SvgPicture.asset('assets/books.svg'),
    title: 'Books',
    progress: ActivityProgressBar(progress: 8, total: 10, rawPercent: 80), id: 5
  ),
  Activity(
    svg: SvgPicture.asset('assets/quiz.svg'),
    title: 'Quizzes',
    progress: ActivityProgressBar(progress: 4, total: 10, rawPercent: 40), id: 6
  ),
  Activity(
    svg: SvgPicture.asset('assets/puzzle.svg'),
    title: 'Games',
    progress: ActivityProgressBar(progress: 9, total: 10, rawPercent: 90), id: 7
  ),
  Activity(
    svg: SvgPicture.asset('assets/translation.svg'),
    title: 'Translation',
    progress: ActivityProgressBar(progress: 4, total: 10, rawPercent: 40), id: 8
  ),
];

class ActivityProgressBar extends StatelessWidget {
  ActivityProgressBar(
      {super.key,
      required this.progress,
      required this.total,
      required this.rawPercent});
  final double progress;
  final double total;
  late double rawPercent;

  @override
  Widget build(BuildContext context) {
    rawPercent = progress / total * 100;
    final percent = rawPercent.toInt();
    return Column(
      children: [
        Text(
          'You completed $percent%',
          style: const TextStyle(
            color: progressColor,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 6),
        ProgressBar(
          progress: progress,
          total: total,
          width: 118,
          height: 8.0,
        ),
      ],
    );
  }
}

// final sjssh = activities[2].progress;
