import 'package:dream_app/src/ui/pages/welcome_mobile_view.dart';
import 'package:dream_app/src/ui/pages/welcome_desktop_view.dart';
import 'package:flutter/material.dart';

import '../responsive/responsive_layout.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: WelcomeMobileView(),
        tabletBody: WelcomeDesktopView(),
      ),
    );
  }
}
