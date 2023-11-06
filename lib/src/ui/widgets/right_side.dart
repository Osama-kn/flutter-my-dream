import 'package:dream_app/src/ui/widgets/custom_button.dart';
import 'package:dream_app/src/ui/widgets/labele_icon.dart';
import 'package:flutter/material.dart';
import 'package:dream_app/data/text_blocks_data.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.only(left: 60, right: 0, top: 0, bottom: 0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Votre Shynleï c'est...",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "7 étapes, 2 fiches pour prendre note des rencontres, 1 page pour éclairer le sens, 3 interprétations pour vous aider ..",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 40),
            buildDesktopLayout(),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
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

  Widget buildDesktopLayout() {
    List<Widget> labeledIconsList = iconData.asMap().entries.map((entry) {
      int index = entry.key;
      Map<String, String> icon = entry.value;

      return LabeledIcon(
        iconPath: icon['iconPath']!,
        label: '${index + 1}. ${icon['label']!}',
      );
    }).toList();

    return GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: labeledIconsList);
  }
}
