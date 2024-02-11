import 'package:flutter/material.dart';

class InterestBadge extends StatelessWidget {
  const InterestBadge({
    super.key,
    required this.title,
    required this.isActive,
    this.additional,
    this.onTap,
  });
  final String title;
  final bool isActive;
  final IconData? additional;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isActive ? const Color.fromRGBO(198, 124, 114, 1) : null,
          border: Border.all(
            color: const Color.fromRGBO(101, 12, 1, 0.7),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            if (additional != null)
              Icon(
                additional,
                size: 13.0,
                color: isActive ? Colors.white : Colors.black,
              )
          ],
        ),
      ),
    );
  }
}
