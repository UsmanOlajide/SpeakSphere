import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/widgets/button.dart';
import 'package:speaksphere/widgets/constants.dart';
import 'package:speaksphere/widgets/progressbar.dart';

class SpeakingScreen extends StatelessWidget {
  const SpeakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 41),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/chevron_left.svg'),
                      const SizedBox(width: 10),
                      Expanded(
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return ProgressBar(
                              progress: 6.21,
                              total: 10,
                              width: constraints.maxWidth,
                              height: 10,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 29),
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(
                      'Speak this sentence',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: colorGreySpeakScr,
                      ),
                    ),
                  ),
                  const SizedBox(height: 34),
                  Center(child: SvgPicture.asset('assets/speaker.svg')),
                  const SizedBox(height: 34),
                  const Center(
                    child: Text(
                      'Bonjour, Buchi, enchante',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: colorGreySpeakScr,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              Center(child: SvgPicture.asset('assets/voice.svg')),
              // Center(child: SvgPicture.asset('assets/voice.svg')),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Brilliant',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: colorGreySpeakScr,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Meaning:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: colorGreySpeakScr,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Hello, Buchi, nice to meet you.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: colorGreySpeakScr,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Button(
                      color: colorWine,
                      textColor: Colors.white,
                      title: 'Continue',
                      onTap: () => GoRouter.of(context).pop(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
