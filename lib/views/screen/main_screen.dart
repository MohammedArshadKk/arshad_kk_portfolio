import 'package:arshad_kk_portfolio/views/widgets/about_me.dart';
import 'package:arshad_kk_portfolio/views/widgets/contact_section.dart';
import 'package:arshad_kk_portfolio/views/widgets/drawer_widget.dart';
import 'package:arshad_kk_portfolio/views/widgets/footer.dart';
import 'package:arshad_kk_portfolio/views/widgets/nav_bar.dart';
import 'package:arshad_kk_portfolio/views/widgets/projects_section.dart';
import 'package:arshad_kk_portfolio/views/widgets/skills_section.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];
  void _scrollToSection(int index) {
    Scrollable.ensureVisible(
      _sectionKeys[index].currentContext!,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: NavBar(onSectionTap: _scrollToSection),
      ),
      endDrawer: DrawerWidget(onSectionTap: _scrollToSection),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AboutMeSection(
                key: _sectionKeys[0],
                onSectionTap: _scrollToSection,
              ),
              const SizedBox(height: 100),
              SkillsSection(key: _sectionKeys[1]),
              const SizedBox(height: 100),
              ProjectsSection(key: _sectionKeys[2]),
              const SizedBox(height: 100),
              ContactSection(key: _sectionKeys[3]),
              const SizedBox(height: 100),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
