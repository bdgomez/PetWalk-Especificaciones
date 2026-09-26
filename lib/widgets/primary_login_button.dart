import 'package:flutter/material.dart';

class PrimaryLoginButton extends StatelessWidget {
  const PrimaryLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          colors: [Color(0xFFC9AC36), Color(0xFF5F36C9)],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF5F36C9).withValues(alpha: 0.35),
            blurRadius: 20,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'Iniciar sesión',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
