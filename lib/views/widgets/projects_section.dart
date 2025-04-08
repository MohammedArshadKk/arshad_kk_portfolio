import 'package:animate_do/animate_do.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/views/widgets/build_project_items.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) { 
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeft(
          duration: const Duration(milliseconds: 800),
          child: const Text(
            '03. My Projects',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 40),
        screenWidth > 1000
            ? Column(
                children: buildProjectItems(isLarge: true),
              )
            : Column(
                children: buildProjectItems(isLarge: false),
              ),
      ],
    );
  }
}