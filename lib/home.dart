import 'package:flutter/material.dart';
import 'package:flutter_application_00/coffee_prefs.dart';
import 'package:flutter_application_00/dice_roller.dart';
import 'package:flutter_application_00/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Coffee App',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.amber[600],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                color: Colors.amber[300],
                child: const StyledBodyText(
                  "How I like my Coffee...",
                )),
            Container(color: Colors.amber[200], child: const CoffeePrefs()),
            Expanded(
              child: Stack(fit: StackFit.expand, children: [
                Image.asset(
                  'assets/images/coffee_bg.jpg',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 32),
                    child: const DiceRoller())
              ]),
            ),
          ],
        ));
  }
}
