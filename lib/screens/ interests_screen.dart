import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/widgets/app_route.dart';
import 'package:speaksphere/widgets/button_section.dart';
import 'package:speaksphere/widgets/interest_section.dart';
import 'package:speaksphere/widgets/progressbar.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                 InterestProgressBar(progress: 5, total: 6),
                SizedBox(height: 28),
                InterestSection()
              ],
            ),
            ButtonSection(onTap: () => context.goNamed(AppRoute.tabs.name), title1: 'Continue', title2: 'Skip for now',)
          ],
        ),
      )),
    );
  }
}

class InterestProgressBar extends StatelessWidget {
  const InterestProgressBar(
      {super.key, required this.progress, required this.total});
  final double progress;
  final double total;
  // final double widthValue;

  @override
  Widget build(BuildContext context) {
    final prg = progress.toInt();
    final ttl = total.toInt();
    return Row(
      children: [
        SvgPicture.asset('assets/chevron_left.svg'),
        const SizedBox(width: 10),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ProgressBar(
                progress: progress,
                total: total,
                width: constraints.maxWidth,
                height: 13,
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '$prg/$ttl',
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
