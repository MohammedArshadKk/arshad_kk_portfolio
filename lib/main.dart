import 'package:arshad_kk_portfolio/firebase_options.dart';
import 'package:arshad_kk_portfolio/utils/colors.dart';
import 'package:arshad_kk_portfolio/views/screen/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme().copyWith(
            bodyLarge: TextStyle(color: AppColors.textColor),
            bodyMedium: TextStyle(color: AppColors.textColor),
            bodySmall: TextStyle(color: AppColors.textColor),
            headlineLarge: TextStyle(color: AppColors.textColor),
        ), 
          scaffoldBackgroundColor: AppColors.backgroundColor,
          appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundColor)),
      home: MainScreen(),
    );
  }
}
