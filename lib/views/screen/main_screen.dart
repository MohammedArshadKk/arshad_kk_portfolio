import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/views/widgets/custom_container.dart';
import 'package:arshad_kk_portfolio/views/widgets/drawer_widget.dart';
import 'package:arshad_kk_portfolio/views/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: AppBar(
        actions: [NavBar()],
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Builder(
                  builder: (context) {
                    if (screenWidth > 600) {
                      return Center(
                        child: CustomContainer(
                          height: screenHeight * 0.8,
                          width: screenWidth * 0.9,
                          color: AppColors.textColor,
                        ),
                      );
                    }
                    return SizedBox();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
