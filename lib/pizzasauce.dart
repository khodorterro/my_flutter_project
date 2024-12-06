import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pizzasauce extends StatefulWidget {
  Function f;
  Pizzasauce({required this.f, super.key});

  @override
  State<Pizzasauce> createState() => _PizzasauceState();
}

class _PizzasauceState extends State<Pizzasauce> {
  String sauce = 'Tomato';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Select Sauce',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: 'Tomato',
              groupValue: sauce,
              onChanged: (value) {
                setState(() {
                  sauce = value as String;
                  widget.f(sauce);
                });
              },
            ),
            const Text('Tomato'),
            Radio(
              value: 'BBK',
              groupValue: sauce,
              onChanged: (value) {
                setState(() {
                  sauce = value as String;
                  widget.f(sauce);
                });
              },
            ),
            const Text('BBk'),
          ],
        ),
      ],
    );
  }
}
