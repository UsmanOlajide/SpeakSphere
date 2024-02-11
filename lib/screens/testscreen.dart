// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:speaksphere/widgets/constants.dart';
// import 'package:flutter/rendering.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key, required this.progress, required this.total});
  final double progress;
  final double total;

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Center(
            child: Container(
              height: 47,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 20,
                    color: dropShadow,
                    offset: Offset(0, -4),
                  ),
                ],
              ),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}



// Center(
//           child: Container(
//             height: 43,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               border: Border.all(color: colorGrey),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 6, right: 38),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: colorWine,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           left: 34, top: 7, right: 34, bottom: 4),
//                       child: Text(
//                         'Video Lesson',
//                         style: TextStyle(fontSize: 16, color: colorGrey),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         selected = false;
//                       });
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: selected ? Colors.yellow : colorWine,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                             left: 34, top: 7, right: 34, bottom: 4),
//                         child: Text(
//                           'Video Lesson',
//                           style: TextStyle(fontSize: 16, color: colorGrey),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),







// class TestScreen extends StatelessWidget {
//   const TestScreen({super.key, required this.progress, required this.total});
//   final double progress;
//   final double total;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: LayoutBuilder(
//       builder: (context, constraints) {
//         final prg = progress.toInt();
//         final ttl = total.toInt();
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Cont(
//                 width: constraints.maxWidth * progress / total,
//               ),
//               Text('$prg/$ttl')
//             ],
//           ),
//         );
//       },
//     ));
//   }
// }

// class Cont extends StatelessWidget {
//   const Cont({
//     super.key,
//     required this.width,
//   });
//   final double width;

//   @override
//   Widget build(BuildContext context) {
//     // print(myv);
//     // return Text('$myv');
//     return Container(
//       height: 70,
//       width: width,
//       decoration: BoxDecoration(
//         color: Colors.black,
//         border: Border.all(color: Colors.black),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Center(
//         child: Image.asset('assets/firstlesson.jpg'),
//       ),
//     );
//   }
// }
