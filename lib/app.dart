import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'pages/login_page.dart';

class PetWalkApp extends StatelessWidget {
  const PetWalkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetWalk',
      debugShowCheckedModeBanner: false,
      locale: const Locale('es'),
      supportedLocales: const [Locale('es')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF1F1A2B),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC9AC36),
          brightness: Brightness.dark,
        ),
        textTheme: ThemeData.dark().textTheme,
      ),
      home: const LoginPage(),
    );
  }
}
