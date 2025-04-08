 import 'package:animate_do/animate_do.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/view_model/skills_list.dart';
import 'package:flutter/material.dart';

List<Widget> buildSkillCards() {
    return List.generate(
      skills.length,
      (index) => FadeInUp(
        duration: Duration(milliseconds: 800 + (index * 200)),
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(24),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                skills[index]['icon'] as IconData,
                color: AppColors.primaryColor,
                size: 36,
              ),
              const SizedBox(height: 16),
              Text(
                skills[index]['title'] as String,
                style: const TextStyle(
                  color: AppColors.textPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                skills[index]['description'] as String,
                style: const TextStyle(
                  color: AppColors.textSecondaryColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }