import 'package:flutter/material.dart';

import 'search_walkers_page.dart';

class MainNavigationPage extends StatelessWidget {
  const MainNavigationPage({super.key, this.initialIndex = 1})
    : assert(initialIndex >= 0 && initialIndex <= 3);

  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    const titles = ['Inicio', 'Buscar paseadores', 'Reservas', 'Perfil'];

    const pages = [
      _ComingSoonPage(
        icon: Icons.home_rounded,
        message: 'Aquí encontrarás un resumen de la actividad de tu mascota.',
      ),
      SearchWalkersPage(),
      _ComingSoonPage(
        icon: Icons.calendar_month_rounded,
        message: 'Aquí podrás consultar tus próximos paseos.',
      ),
      _ComingSoonPage(
        icon: Icons.person_rounded,
        message: 'Aquí podrás administrar tu información y tus mascotas.',
      ),
    ];

    return Scaffold(
      appBar: initialIndex == 1
          ? null
          : AppBar(
              title: Text(titles[initialIndex]),
              backgroundColor: const Color(0xFF261F31),
            ),
      body: pages[initialIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: initialIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF261F31),
        selectedItemColor: const Color(0xFFC9AC36),
        unselectedItemColor: Colors.white54,
        onTap: (index) {
          if (index == initialIndex) {
            return;
          }

          Navigator.pushReplacement(
            context,
            MaterialPageRoute<void>(
              builder: (context) => MainNavigationPage(initialIndex: index),
            ),
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            activeIcon: Icon(Icons.manage_search_rounded),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            activeIcon: Icon(Icons.calendar_month_rounded),
            label: 'Reservas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            activeIcon: Icon(Icons.person_rounded),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class _ComingSoonPage extends StatelessWidget {
  const _ComingSoonPage({required this.icon, required this.message});

  final IconData icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF2A2435), Color(0xFF171520)],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 65, color: const Color(0xFFC9AC36)),
              const SizedBox(height: 20),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 12),
              const Text(
                'Disponible próximamente',
                style: TextStyle(
                  color: Color(0xFFC9AC36),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
