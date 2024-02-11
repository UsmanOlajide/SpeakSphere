import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speaksphere/widgets/constants.dart';

class ComingScreen extends StatelessWidget {
  const ComingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 75, top: 114),
                child: SvgPicture.asset('assets/comingsoon/bro.svg'),
              ),
              const SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.only(left: 319),
                child:
                    SvgPicture.asset('assets/comingsoon/loadingprogress.svg'),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 104.49,
                // color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 45),
                      child: SvgPicture.asset('assets/comingsoon/flash.svg'),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 38.38),
                          child:  Text(
                            'Coming Soon!',
                            style: TextStyle(
                                fontSize: 32,
                                color: colorWine,
                                height: 0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 9),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 42.38),
                            child: Text(
                              'We’ll be up soon, keep an eye\non us.',
                              style: TextStyle(
                                fontSize: 14,
                                color: colorGrey,
                                height: 0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
          // return Column(
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Container(
          //       margin: const EdgeInsets.only(left: 75, top: 114, right: 74.04),
          //       child: SvgPicture.asset('assets/comingsoon/bro.svg'),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 319, top: 9),
          //       child:
          //           SvgPicture.asset('assets/comingsoon/loadingprogress.svg'),
          //     ),
          //     const SizedBox(height: 9),
          //     const Padding(
          //       padding: EdgeInsets.only(left: 99, right: 91),
          //       child: Text(
          //         'Coming Soon !',
          //         style: TextStyle(
          //             fontSize: 32,
          //             color: colorWine,
          //             fontWeight: FontWeight.w600),
          //       ),
          //     ),
          //     // SizedBox(height: 9),
          //     SizedBox(
          //       height: 35.49,
          //       // color: Colors.white,
          //       child: Row(
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(top: 15, left: 45),
          //             child: SvgPicture.asset('assets/comingsoon/flash.svg'),
          //           ),
          //           const SizedBox(width: 42.38),
          //           const Text(
          //             'We’ll be up soon, keep an eye\non us.',
          //             style: TextStyle(
          //               fontSize: 14,
          //               color: colorGrey,
          //               height: 0,
          //               fontWeight: FontWeight.w400,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // );
        },
      ),
    );
  }
}
 //* Using Stack
      // LayoutBuilder(
      //   builder: (context, constraints) {
      //     return SizedBox(
      //       height: constraints.maxHeight,
      //       width: constraints.maxWidth,
      //       child:
      //        Stack(
      //         children: [
      //           // Positioned(
      //           //   left: 75,
      //           //   top: 114,
      //           //   right: 74.04,
      //           //   child: SvgPicture.asset('assets/comingsoon/bro.svg'),
      //           // ),
      //           Container(
      //             margin: EdgeInsets.only(left: 75, top: 114, right: 74.04),
      //             child: SvgPicture.asset('assets/comingsoon/bro.svg'),
      //           ),
      //           SizedBox(height: 9),
      //           // Positioned(
      //           //   left: 319,
      //           //   right: 54,
      //           //   child:
      //           //       SvgPicture.asset('assets/comingsoon/loadingprogress.svg'),
      //           // ),
      //           Container(
      //             margin: EdgeInsets.only(left: 319, right: 54),
      //             child:
      //                 SvgPicture.asset('assets/comingsoon/loadingprogress.svg'),
      //           ),
      //           // SizedBox(height: 9),
      //           // Center(
      //           //   child: Text(
      //           //     'Coming Soon !',
      //           //     style: TextStyle(
      //           //         fontSize: 32,
      //           //         color: colorWine,
      //           //         fontWeight: FontWeight.w600),
      //           //   ),
      //           // ),
      //           // Center(
      //           //   child: Text(
      //           //     'We’ll be up soon, keep an eye\non us.',
      //           //     style: TextStyle(
      //           //         fontSize: 14,
      //           //         color: colorGrey,
      //           //         fontWeight: FontWeight.w400),
      //           //   ),
      //           // ),
      //           // Container(
      //           //   margin: EdgeInsets.only(left: 45, top: 382),
      //           //   child: SvgPicture.asset('assets/comingsoon/flash.svg'),
      //           // ),
      //         ],
      //       ),
      //     );
      //   },
      // ),

      //* Column children placement practice
      //        Container(
      //   margin: EdgeInsets.only(left: 20, top: 100, right: 20),
      //   color: Colors.white,
      //   height: 400,
      //   width: 400,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       // Container(
      //       //   margin: EdgeInsets.only(left: 75, top: 114, right: 74.04),
      //       //   child: SvgPicture.asset('assets/comingsoon/bro.svg'),
      //       // ),
      //       SizedBox(height: 90),
      //       Center(child: Text('data')),
      //       Text('data')
      //       // Container(
      //       //   margin: EdgeInsets.only(left: 319, right: 54),
      //       //   child: SvgPicture.asset('assets/comingsoon/loadingprogress.svg'),
      //       // ),
      //       // SizedBox(height: 9),
      //       // Text(
      //       //   'Coming Soon !',
      //       //   style: TextStyle(
      //       //       fontSize: 32, color: colorWine, fontWeight: FontWeight.w600),
      //       // ),
      //     ],
      //   ),
      // ),