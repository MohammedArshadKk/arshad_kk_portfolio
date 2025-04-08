import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final Function(int) onSectionTap;

  const DrawerWidget({super.key, required this.onSectionTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.cardColor,
            ),
            child: Text(
              'Portfolio',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: const Text('About',
                style: TextStyle(color: AppColors.textPrimaryColor)),
            onTap: () {
              Navigator.pop(context);
              onSectionTap(0);
            },
          ),
          ListTile(
            title: const Text('Skills',
                style: TextStyle(color: AppColors.textPrimaryColor)),
            onTap: () {
              Navigator.pop(context);
              onSectionTap(1);
            },
          ),
          ListTile(
            title: const Text('Projects',
                style: TextStyle(color: AppColors.textPrimaryColor)),
            onTap: () {
              Navigator.pop(context);
              onSectionTap(2);
            },
          ),
          ListTile(
            title: const Text('Contact',
                style: TextStyle(color: AppColors.textPrimaryColor)),
            onTap: () {
              Navigator.pop(context);
              onSectionTap(3);
            },
          ),
          const Divider(color: AppColors.textSecondaryColor),
          ListTile(
            title: const Text('Resume',
                style: TextStyle(color: AppColors.primaryColor)),
            onTap: () {
              // Download Resume Function
            },
          ),
        ],
      ),
    );
  }
}