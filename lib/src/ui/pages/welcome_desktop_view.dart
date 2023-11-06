import 'package:dream_app/src/ui/widgets/Header.dart';
import 'package:dream_app/src/ui/widgets/left_side.dart';
import 'package:dream_app/src/ui/widgets/right_side.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeDesktopView extends StatelessWidget {
  const WelcomeDesktopView({Key? key}) : super(key: key);

  final EdgeInsets padding =
      const EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'images/background.svg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: padding,
            child: const Column(
              children: [
                Header(),
                Expanded(
                  child: Row(
                    children: [
                      LeftSide(),
                      RightSide(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
