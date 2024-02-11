import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.color,
      required this.textColor,
      required this.title,
      required this.onTap});

  final Color color;
  final Color textColor;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Text(
              title,
              style: TextStyle(
                  color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
            ),
          )),
    );
  }
}
