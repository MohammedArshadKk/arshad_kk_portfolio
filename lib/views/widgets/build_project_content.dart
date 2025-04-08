import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/view_model/launch_url.dart';
import 'package:flutter/material.dart';

Widget buildProjectContent(
  String title,
  String description,
  List<String> tech,
  String link, {
  required CrossAxisAlignment alignment,
}) {
  return Container(
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      color: AppColors.cardColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.textPrimaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          style: const TextStyle(
            color: AppColors.textSecondaryColor,
            fontSize: 16,
          ),
          textAlign: alignment == CrossAxisAlignment.end
              ? TextAlign.right
              : TextAlign.left,
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: tech
              .map(
                (t) => Chip(
                  label: Text(
                    t,
                    style: const TextStyle(
                        color: AppColors.primaryColor, fontSize: 12),
                  ),
                  backgroundColor: AppColors.backgroundColor,
                  side: const BorderSide(color: AppColors.primaryColor),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {
            launchAppUrl(link);
          },
          icon: const Icon(Icons.link),
          label: const Text('View Project'),
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primaryColor,
            side: const BorderSide(color: AppColors.primaryColor),
          ),
        ),
      ],
    ),
  );
}
