import 'package:animate_do/animate_do.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/views/widgets/build_skill_cards.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeft( 
          duration: const Duration(milliseconds: 800),
          child: const Text(
            '02. My Skills',
            style: TextStyle( 
              color: AppColors.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 40),
        screenWidth > 800
            ? Wrap(
                spacing: 16,
                runSpacing: 16,
                children: buildSkillCards(),
              )
            : Column(
                children: buildSkillCards()
                    .map((card) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: card,
                        ))
                    .toList(),
              ),
      ],
    );
  }
}