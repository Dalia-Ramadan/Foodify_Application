import 'package:flutter/material.dart';
import 'package:foodify/screens/splash_screen.dart';

void main() {
  runApp(Foodify());
}

class Foodify extends StatelessWidget {
  const Foodify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Color(0xff000000),
          ),
          bodySmall: TextStyle(fontSize: 16,color: Color(0xffffffff)),
          bodyMedium: TextStyle(fontSize: 20, color: Colors.black87,letterSpacing: 5),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          foregroundColor: Color(0xffffffff),
          backgroundColor: Color(0xfffb7324),
          titleTextStyle: TextStyle(
            letterSpacing: 2.5,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255),
            size: 28,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xfffb7324),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xfffb7324), size: 26),
      ),
      home: SplashScreen(),
    );
  }
}
