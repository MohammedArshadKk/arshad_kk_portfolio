import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NavItem extends StatefulWidget {
  final String text;

  const NavItem({super.key, required this.text});

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: widget.text,
              fontSize: 16,
              color: AppColors.textColor,
              textAlign: TextAlign.start,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: isHovered ? 2 : 0,
              width: isHovered ? 40 : 0,
              color: AppColors.textColor,
            ),
          ],
        ),
      ),
    );
  }
}
