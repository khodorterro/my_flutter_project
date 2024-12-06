import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pizzacrusttype extends StatefulWidget {
  Function f;
  Pizzacrusttype({required this.f, super.key});

  @override
  State<Pizzacrusttype> createState() => _PizzacrusttypeState();
}

class _PizzacrusttypeState extends State<Pizzacrusttype> {
  String crustype = 'Thin';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Select Crust Type',
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
              value: 'Thin',
              groupValue: crustype,
              onChanged: (value) {
                setState(() {
                  crustype = value as String;
                  widget.f(crustype);
                });
              },
            ),
            const Text('Thin'),
            Radio(
              value: 'Thick',
              groupValue: crustype,
              onChanged: (value) {
                setState(() {
                  crustype = value as String;
                  widget.f(crustype);
                });
              },
            ),
            const Text('Thick'),
            Radio(
              value: 'Stuffed',
              groupValue: crustype,
              onChanged: (value) {
                setState(() {
                  crustype = value as String;
                  widget.f(crustype);
                });
              },
            ),
            const Text('Stuffed'),
          ],
        ),
      ],
    );
  }
}
