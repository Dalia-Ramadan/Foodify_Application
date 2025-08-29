import 'package:flutter/material.dart';
import 'package:foodify/screens/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnboardingScreen()),
        ),
      child: Scaffold(
        backgroundColor: Color(0xfffb7324),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 1),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xfffb7324),
                  child: Image.asset('assets/images/logo.jpg',color: Color(0xffffffff),),
                ),
                Column(
                  children: [
                    Text(
                      'Foodify',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(color: Color(0xffffffff)),
                    ),
                    Text(
                      'Order.Eat.Enjoy',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 1),
                Text(
                  'Tap anywhere to continue',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
