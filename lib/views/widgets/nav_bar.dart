import 'package:arshad_kk_portfolio/views/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    return Builder(
      builder: (context) {
        if (screenWidth > 600) {
          return Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavItem(text: 'Home'),
              NavItem(text: 'About'),
              NavItem(text: 'Projects'),
              NavItem(text: 'Contact'),
            ],
          );
        } else {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ));
        }
      },
    );
  }
}
