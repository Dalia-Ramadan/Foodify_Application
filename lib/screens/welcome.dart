import 'package:flutter/material.dart';
import 'package:foodify/screens/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffffc971),
                Color(0xffffc973),
                Color(0xffffd79c),
                Color(0xffffdba7),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundColor: Color(0xffffc973),
                  backgroundImage: AssetImage('assets/images/welcomelogo.png'),
                ),
                Text(
                  'Foodify',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
                Text(
                  'Welcome to Foodify',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Text(
                  'Delicious meals, delivered fast to your door.',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0,top: 20.0,bottom: 20.0),
                  child: Image.asset('assets/images/welcome.png', width: 320),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                    minimumSize: Size(250, 45),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 25, letterSpacing: 2),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                    minimumSize: Size(250, 45),
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 2,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
