import 'package:flutter/material.dart';
import 'package:flutter_application_00/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 0;

  void strengthOnPressed() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void sugarOnPressed() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const Text("Strength: "),
              for (int i = 0; i < strength; i++)
                Image.asset(
                  'assets/images/coffee_bean.png',
                  width: 25,
                  color: Colors.amber[200],
                  colorBlendMode: BlendMode.multiply,
                ),
              const Expanded(child: SizedBox()),
              StyledButton(onPressed: strengthOnPressed, child: const Text("+"))
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text("Sugar: "),
                  if (sugar == 0) const Text("No sugar"),
                  for (int i = 0; i < sugar; i++)
                    Image.asset(
                      'assets/images/sugar_cube.png',
                      width: 25,
                      color: Colors.amber[200],
                      colorBlendMode: BlendMode.multiply,
                    ),
                ],
              ),
              StyledButton(onPressed: sugarOnPressed, child: const Text("+"))
            ],
          ),
        )
      ],
    );
  }
}
