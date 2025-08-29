import 'package:flutter/material.dart';
import 'package:foodify/components/onboarding_widget.dart';
import 'package:foodify/screens/welcome.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  final List<Widget> _pages = [
    Container(
      color: Colors.white,
      child: OnboardingWidget(
        image: 'assets/images/dicoveronboarding.png',
        bigText: 'Discover restaurants',
        smallText: 'Browse a variety of restaurants and dishes',
      ),
    ),
    Container(
      color: Colors.white,
      child: OnboardingWidget(
        image: 'assets/images/deliveryonboarding.png',
        bigText: 'Fast delivery',
        smallText: 'Get your order quickly and effortlessly',
      ),
    ),
    Container(
      color: Colors.white,
      child: OnboardingWidget(
        image: 'assets/images/paymentonboarding.png',
        bigText: 'Easy payment',
        smallText: 'Pay securely using the method you prefer',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: _pages,
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_pages.length, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: _currentPage == index ? 15 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? Colors.deepPurple
                            : const Color.fromARGB(143, 158, 158, 158),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage == _pages.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreen(),
                        ),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Text(
                    _currentPage == _pages.length - 1 ? 'Start' : 'Next',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
