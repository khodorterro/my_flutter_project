import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pizzatypewidget extends StatefulWidget {
  Function f;
  Pizzatypewidget({required this.f, super.key});

  @override
  State<Pizzatypewidget> createState() => _PizzatypewidgetState();
}

class _PizzatypewidgetState extends State<Pizzatypewidget> {
  String pizzatype = 'Margeritha';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Select Pizza Type',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: 'Margeritha',
              groupValue: pizzatype,
              onChanged: (value) {
                setState(() {
                  pizzatype = value as String;
                  widget.f(pizzatype);
                });
              },
            ),
            const Text('Margeritha'),
            Radio(
              value: 'Pepperoni',
              groupValue: pizzatype,
              onChanged: (value) {
                setState(() {
                  pizzatype = value as String;
                  widget.f(pizzatype);
                });
              },
            ),
            const Text('Pepperoni'),
            Radio(
              value: 'BBK chicken',
              groupValue: pizzatype,
              onChanged: (value) {
                setState(() {
                  pizzatype = value as String;
                  widget.f(pizzatype);
                });
              },
            ),
            const Text('BBK chicken'),
          ],
        ),
      ],
    );
  }
}
