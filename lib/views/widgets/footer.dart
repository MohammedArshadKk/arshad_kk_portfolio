import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Divider(color: AppColors.textSecondaryColor, thickness: 0.5),
          const SizedBox(height: 20),
          Text(
            'Designed & Built with Flutter Web © ${DateTime.now().year}',
            style: const TextStyle(
              color: AppColors.textSecondaryColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}