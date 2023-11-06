import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    const whiteInputDecoration = InputDecoration(
      hintStyle: TextStyle(color: Colors.white),
      labelStyle: TextStyle(color: Colors.white),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    );
    return Expanded(
      flex: 2,
      child: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 200, top: 0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Pour commencer...",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.white)),
            const SizedBox(height: 20),
            const Text(
              "Faire votre Shynlei, jouer avec, c'est l'occasion d'écouter vos rêves, de les partager et de prendre confiance dans votre richesse.",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 40),
            const Text(
              'Nom et prénom :',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 10),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: whiteInputDecoration.copyWith(hintText: 'Jeal'),
            ),
            const SizedBox(height: 30),
            const Text(
              'Mon intention :',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 10),
            Text(
              'L’intention, l’objectif de ce Shynlei',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: whiteInputDecoration.copyWith(hintText: 'Jeal'),
            ),
          ],
        ),
      ),
    );
  }
}
