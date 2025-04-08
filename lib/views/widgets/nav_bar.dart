import 'package:animate_do/animate_do.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/view_model/launch_url.dart';
import 'package:arshad_kk_portfolio/views/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Function(int) onSectionTap;

  const NavBar({super.key, required this.onSectionTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      title: Row(
        children: [
          FadeIn(
            duration: const Duration(milliseconds: 1200),
            child: Text(
              'Portfolio',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
      actions: screenWidth > 800
          ? [
              NavBarItem(title: 'About', index: 0, onTap: onSectionTap),
              NavBarItem(title: 'Skills', index: 1, onTap: onSectionTap),
              NavBarItem(title: 'Projects', index: 2, onTap: onSectionTap),
              NavBarItem(title: 'Contact', index: 3, onTap: onSectionTap),
              const SizedBox(width: 20),
              FadeIn(
                duration: const Duration(milliseconds: 1200),
                child: OutlinedButton(
                  onPressed: () {
                    launchAppUrl(
                        'https://drive.google.com/file/d/1adiC3wb9lOJknNad6WQBt-mlxCuivICi/view?usp=drive_link'); 
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: AppColors.primaryColor),
                    shape: RoundedRectangleBorder(  
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Resume',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ]
          : [
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu, color: AppColors.primaryColor),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ),
            ],
    );
  }
}
