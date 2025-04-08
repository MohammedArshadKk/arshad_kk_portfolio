import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:flutter/material.dart';

Widget buildContent(final Function(int) onSectionTap) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FadeInLeft(
        duration: const Duration(milliseconds: 800),
        child: Text(
          'Hi, my name is',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      const SizedBox(height: 10),
      FadeInLeft(
        duration: const Duration(milliseconds: 1000),
        child: AnimatedTextKit(
          totalRepeatCount: 1,
          animatedTexts: [
            TypewriterAnimatedText(
              'Mohammed Arshad kk',
              textStyle: TextStyle(
                color: AppColors.textPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 46,
              ),
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
      FadeInLeft(
        duration: const Duration(milliseconds: 1400),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 540),
          child: Text(
            "I'm a Flutter Developer with 1.5 years of hands-on experience in building scalable mobile and web apps using Flutter, Dart, and Clean Architecture. Skilled in state management, API integration, and performance optimization. Strong problem-solving and debugging skills. ", 
            style: TextStyle(
              color: AppColors.textSecondaryColor,
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ),
      ),
      const SizedBox(height: 30),
      FadeInLeft(
        duration: const Duration(milliseconds: 1600),
        child: ElevatedButton(
          onPressed: () {
            onSectionTap(3); 
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: AppColors.primaryColor,
            side: const BorderSide(color: AppColors.primaryColor),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          ),
          child: const Text('Get In Touch'),
        ),
      ),
    ],
  );
}
