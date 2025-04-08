import 'package:animate_do/animate_do.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/views/widgets/build_content.dart';
import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  final Function(int) onSectionTap;
 
  const AboutMeSection({super.key, required this.onSectionTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: screenWidth > 800
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: buildContent(onSectionTap),
                ),
                const SizedBox(width: 40),
                FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: AppColors.primaryColor, width: 2),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/arshad kk.png') 
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                buildContent(onSectionTap),
                const SizedBox(height: 40),
                FadeInUp(
                  duration: const Duration(milliseconds: 1200),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: AppColors.primaryColor, width: 2),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'assets/images/arshad kk.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
