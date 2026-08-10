import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/features_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const SchoolRidesApp());
}

class SchoolRidesApp extends StatelessWidget {
  const SchoolRidesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SchoolRides',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88E5), // Modern Blue
          primary: const Color(0xFF1E88E5),
          secondary: const Color(0xFF039BE5),
          surface: Colors.white,
          background: const Color(0xFFF5F7FA),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/features': (context) => const FeaturesScreen(),
        '/contact': (context) => const ContactScreen(),
        '/login/parent': (context) => const LoginScreen(role: 'Parent'),
        '/login/school': (context) => const LoginScreen(role: 'School'),
        '/login/driver': (context) => const LoginScreen(role: 'Driver'),
      },
    );
  }
}
