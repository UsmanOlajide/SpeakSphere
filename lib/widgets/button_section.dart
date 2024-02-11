import 'package:flutter/material.dart';
import 'package:speaksphere/widgets/button.dart';
import 'package:speaksphere/widgets/constants.dart';

class Customer {
  String name;
  int? age;
  String? location;

  // Positional optional parameters
  Customer(this.name, [this.age, this.location]);
}

class ButtonSection extends StatelessWidget {
  const ButtonSection(
      {super.key,
      required this.onTap,
      required this.title1,
      required this.title2});
  final VoidCallback? onTap;
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          Button(
            color: colorWine,
            textColor: Colors.white,
            onTap: onTap,
            title: title1,
          ),
          Button(
            color: Theme.of(context).colorScheme.background,
            textColor: colorWine,
            onTap: onTap,
            title: title2,
          ),
        ],
      ),
    );
  }
}


