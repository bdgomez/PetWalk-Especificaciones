import 'package:flutter/material.dart';

class PetWalkLogo extends StatelessWidget {
  const PetWalkLogo({super.key, this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) {
    final logoSize = compact ? 38.0 : 52.0;
    final iconSize = compact ? 21.0 : 28.0;
    final textSize = compact ? 25.0 : 34.0;

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: logoSize,
          height: logoSize,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFC9AC36), Color(0xFF5F36C9)],
            ),
            borderRadius: BorderRadius.circular(compact ? 12 : 16),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFC9AC36).withValues(alpha: 0.4),
                blurRadius: 18,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Icon(Icons.pets_rounded, color: Colors.white, size: iconSize),
        ),
        SizedBox(width: compact ? 9 : 14),
        Text(
          'petwalk',
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.w800,
            letterSpacing: -1.4,
            color: Color(0xFFF6F2E9),
          ),
        ),
      ],
    );
  }
}
