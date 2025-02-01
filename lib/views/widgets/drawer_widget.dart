import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/views/widgets/custom_container.dart';
import 'package:arshad_kk_portfolio/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    return CustomContainer(
      height: screenHeight,
      width: screenWidth,
      color: AppColors.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CustomText(
              text: 'Home',
            ),
          ),
          Divider(
            height: 20,
            color: AppColors.textColor,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CustomText(text: 'About'),
          ),
          Divider(
            height: 20,
            color: AppColors.textColor,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CustomText(text: 'Projects'),
          ),
          Divider(
            height: 20,
            color: AppColors.textColor,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CustomText(text: 'Contact me'),
          ),
        ],
      ),
    );
  }
}
