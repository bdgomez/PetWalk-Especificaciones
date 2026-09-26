import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';
import '../widgets/petwalk_logo.dart';
import '../widgets/primary_login_button.dart';
import '../widgets/social_login_button.dart';
import 'main_navigation_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2A2435), Color(0xFF1E1A2A), Color(0xFF171520)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -30,
              right: -20,
              child: _GlowOrb(
                size: 180,
                color: const Color(0xFF5F36C9).withValues(alpha: 0.35),
              ),
            ),
            Positioned(
              bottom: 50,
              left: -40,
              child: _GlowOrb(
                size: 220,
                color: const Color(0xFF366CC9).withValues(alpha: 0.22),
              ),
            ),
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  child: SizedBox(
                    width: size.width > 500 ? 430 : double.infinity,
                    child: Column(
                      children: [
                        const PetWalkLogo(),
                        const SizedBox(height: 28),
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: const Color(
                              0xFF261F31,
                            ).withValues(alpha: 0.9),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: const Color(
                                0xFFC9AC36,
                              ).withValues(alpha: 0.35),
                              width: 1.2,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(
                                  0xFF000000,
                                ).withValues(alpha: 0.18),
                                blurRadius: 25,
                                offset: const Offset(0, 18),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '¡Qué bueno verte de nuevo!',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Inicia sesión para seguir paseando con tu mejor amigo',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withValues(alpha: 0.7),
                                ),
                              ),
                              const SizedBox(height: 26),
                              const CustomInputField(
                                icon: Icons.email_outlined,
                                hintText: 'Correo electrónico',
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 18),
                              const CustomInputField(
                                icon: Icons.lock_outline_rounded,
                                hintText: 'Contraseña',
                                isPassword: true,
                              ),
                              const SizedBox(height: 18),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '¿Olvidaste tu contraseña?',
                                    style: TextStyle(
                                      color: Color(0xFFC9AC36),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 14),
                              PrimaryLoginButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute<void>(
                                      builder: (_) => const MainNavigationPage(
                                        initialIndex: 1,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 22),
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white.withValues(
                                        alpha: 0.2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    child: Text(
                                      'o continúa con',
                                      style: TextStyle(
                                        color: Colors.white.withValues(
                                          alpha: 0.6,
                                        ),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white.withValues(
                                        alpha: 0.2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 18),
                              Row(
                                children: [
                                  Expanded(
                                    child: SocialLoginButton(
                                      label: 'Google',
                                      icon: Icons.g_mobiledata_rounded,
                                      color: const Color(0xFF5F36C9),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: SocialLoginButton(
                                      label: 'Apple',
                                      icon: Icons.apple_rounded,
                                      color: const Color(0xFF366CC9),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 26),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '¿Primera vez aquí? ',
                                    style: TextStyle(
                                      color: Colors.white.withValues(
                                        alpha: 0.7,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Text(
                                      'Crear cuenta',
                                      style: TextStyle(
                                        color: Color(0xFFC9AC36),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GlowOrb extends StatelessWidget {
  const _GlowOrb({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [BoxShadow(color: color, blurRadius: 40, spreadRadius: 14)],
      ),
    );
  }
}
