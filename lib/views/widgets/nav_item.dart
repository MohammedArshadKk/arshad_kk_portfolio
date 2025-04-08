import 'package:animate_do/animate_do.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final int index;
  final Function(int) onTap;

  const NavBarItem({
    super.key,
    required this.title,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: Duration(milliseconds: 1200 + (index * 200)),
      child: TextButton(
        onPressed: () => onTap(index),
        child: Text(
          title,
          style: const TextStyle(color: AppColors.textPrimaryColor),
        ),
      ),
    );
  }
}