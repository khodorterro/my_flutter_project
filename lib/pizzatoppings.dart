import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pizzatoppings extends StatefulWidget {
  Function f1, f2, f3;
  Pizzatoppings(
      {required this.f1, required this.f2, required this.f3, super.key});

  @override
  State<Pizzatoppings> createState() => _PizzatoppingsState();
}

class _PizzatoppingsState extends State<Pizzatoppings> {
  bool withMashrooms = false;
  bool withOlives = false;
  bool withgreenpeppers = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Select Toppings',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Mashrooms'),
            Checkbox(
              value: withMashrooms,
              onChanged: (value) {
                setState(() {
                  withMashrooms = value as bool;
                  widget.f1(withMashrooms);
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Olives'),
            Checkbox(
              value: withOlives,
              onChanged: (value) {
                setState(() {
                  withOlives = value as bool;
                  widget.f2(withOlives);
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Green Peppers'),
            Checkbox(
              value: withgreenpeppers,
              onChanged: (value) {
                setState(() {
                  withgreenpeppers = value as bool;
                  widget.f3(withgreenpeppers);
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
