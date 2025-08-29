import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  final String image;
  final String bigText;
  final String smallText;
  const OnboardingWidget({
    super.key,
    required this.image,
    required this.bigText,
    required this.smallText,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 350),
          Center(
            child: Text(
              bigText,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Center(child: Text(smallText, textAlign: TextAlign.center)),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
