// import 'package:animate_do/animate_do.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:arshad_kk_portfolio/utils/colors.dart';
// import 'package:flutter/material.dart';

// class NameWidget extends StatefulWidget {
//   const NameWidget({super.key});

//   @override
//   State<NameWidget> createState() => _NameWidgetState();
// }

// class _NameWidgetState extends State<NameWidget> {
//   bool showSecondText = false;
//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 2), () {
//       setState(() {
//         showSecondText = true;
//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final mediaQueryData = MediaQuery.of(context);
//     final screenWidth = mediaQueryData.size.width;
//     final screenHeight = mediaQueryData.size.height;
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         FadeIn(
//           duration: Duration(seconds: 5),
//           child: AnimatedTextKit(
//             repeatForever: false,
//             totalRepeatCount: 1,
//             animatedTexts: [
//               TyperAnimatedText(
//                 'MOHAMMED ARSHAD KK',
//                 textStyle: TextStyle(
//                     fontSize: screenWidth * 0.03,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.textColor,
//                     fontFamily: 'ubuntu'),
//                 speed: Duration(milliseconds: 100),
//               ),
//             ],
//           ),
//         ),
//         showSecondText
//             ? FadeIn(
//                 duration: Duration(seconds: 5),
//                 child: AnimatedTextKit(
//                   repeatForever: false,
//                   totalRepeatCount: 1,
//                   animatedTexts: [
//                     TyperAnimatedText(
//                       'FLUTTER DEVELOPER.',
//                       textStyle: TextStyle(
//                           fontSize: screenWidth * 0.03,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.textColor,
//                           fontFamily: 'ubuntu'),
//                       speed: Duration(milliseconds: 100),
//                     ),
//                   ],
//                 ),
//               )
//             : SizedBox()
//       ],
//     );
//   }
// }
