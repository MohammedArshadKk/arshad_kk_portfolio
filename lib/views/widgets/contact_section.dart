import 'package:animate_do/animate_do.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/view_model/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 800),
      margin: EdgeInsets.symmetric(horizontal: screenWidth > 800 ? 100 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInUp(
            duration: const Duration(milliseconds: 800),
            child: const Text(
              '04. Get In Touch',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 20),
          FadeInUp(
            duration: const Duration(milliseconds: 1000),
            child: const Text(
              "Let's Work Together",
              style: TextStyle(
                color: AppColors.textPrimaryColor,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          FadeInUp(
            duration: const Duration(milliseconds: 1200),
            child: const Text(
              "Whether you have a project in mind, a question, or just want to say hi, I'll get back to you as soon as possible!",
              style: TextStyle(
                color: AppColors.textSecondaryColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          FadeInUp(
            duration: const Duration(milliseconds: 1400),
            child: Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        labelStyle:
                            TextStyle(color: AppColors.textSecondaryColor),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(color: AppColors.textSecondaryColor),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      maxLines: 5,
                      decoration: const InputDecoration(
                        labelText: 'Message',
                        labelStyle:
                            TextStyle(color: AppColors.textSecondaryColor),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          foregroundColor: AppColors.backgroundColor,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text(
                          'Send Message',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          FadeInUp(
            duration: const Duration(milliseconds: 1600),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterSocialButton(
                  buttonType: ButtonType.email,
                  onTap: () {},
                  iconSize: 20,
                  mini: true,
                ),
                FlutterSocialButton(
                  buttonType: ButtonType.github,
                  onTap: () {
                    launchAppUrl(
                        'https://github.com/MohammedArshadKk?tab=repositories');
                  },
                  iconSize: 20,
                  mini: true,
                ),
                FlutterSocialButton(
                  buttonType: ButtonType.linkedin,
                  onTap: () {
                    launchAppUrl('https://www.linkedin.com/in/arshad-kk1/');
                  },
                  iconSize: 20,
                  mini: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
