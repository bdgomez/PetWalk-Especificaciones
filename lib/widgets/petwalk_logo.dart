import 'package:flutter/material.dart';

class PetWalkLogo extends StatelessWidget {
  const PetWalkLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFC9AC36), Color(0xFF5F36C9)],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFC9AC36).withValues(alpha: 0.4),
                blurRadius: 18,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const Icon(Icons.pets_rounded, color: Colors.white, size: 28),
        ),
        const SizedBox(width: 14),
        const Text(
          'petwalk',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w800,
            letterSpacing: -1.4,
            color: Color(0xFFF6F2E9),
          ),
        ),
      ],
    );
  }
}
