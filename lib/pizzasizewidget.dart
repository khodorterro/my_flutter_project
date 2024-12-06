import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pizzasizewidget extends StatefulWidget {
  Function f;
  Pizzasizewidget({required this.f, super.key});

  @override
  State<Pizzasizewidget> createState() => _PizzasizewidgetState();
}

class _PizzasizewidgetState extends State<Pizzasizewidget> {
  String pizzaSize = 'Small';
  List<String> list = ['Small', 'Large', 'Medium'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Select Pizza Size',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DropdownMenu<String>(
          initialSelection: pizzaSize,
          onSelected: (String? value) {
            setState(() {
              pizzaSize = value!;
              widget.f(pizzaSize);
            });
          },
          dropdownMenuEntries: list.map((String item) {
            return DropdownMenuEntry<String>(
              value: item,
              label: item,
            );
          }).toList(),
        ),
      ],
    );
  }
}
