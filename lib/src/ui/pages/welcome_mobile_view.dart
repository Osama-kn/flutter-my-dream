import 'package:dream_app/data/text_blocks_data.dart';
import 'package:dream_app/src/ui/widgets/custom_button.dart';
import 'package:dream_app/src/ui/widgets/labele_icon.dart';
import 'package:flutter/material.dart';

class WelcomeMobileView extends StatelessWidget {
  const WelcomeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Votre Shynleï c'est...",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "7 étapes, 2 fiches pour prendre note des rencontres, 1 page pour éclairer le sens, 3 interprétations pour vous aider ..",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 40),
            ...buildMobileLayout(),
            const SizedBox(height: 40),
            Center(
              child: CustomButton(
                text: 'EXPRIMER MES RÊVES >',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildMobileLayout() {
    return iconData.asMap().entries.map((entry) {
      int index = entry.key;
      Map<String, String> icon = entry.value;

      return LabeledIcon(
        iconPath: icon['iconPath']!,
        label: '${index + 1}. ${icon['label']!}',
      );
    }).toList();
  }
}
