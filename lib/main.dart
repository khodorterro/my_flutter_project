import 'package:flutter/material.dart';
import 'package:khodor_terro_project/pizzacrusttype.dart';
import 'package:khodor_terro_project/pizzasauce.dart';
import 'package:khodor_terro_project/pizzasizewidget.dart';
import 'package:khodor_terro_project/pizzatoppings.dart';
import 'package:khodor_terro_project/pizzatypewidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String name = '';
  int phonenumber = 0;
  String address = '';
  String pizzatype = 'Margeritha';
  String pizzaSize = 'Small';
  String crustype = 'Thin';
  bool withMashrooms = false;
  bool withOlives = false;
  bool withgreenpeppers = false;
  String sauce = 'Tomato';
  double totalprice = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pizza Order'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration:
                      const InputDecoration(labelText: 'Enter Your Name'),
                  onChanged: (value) {
                    name = value;
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                      labelText: 'Enter your phone number'),
                  onChanged: (value) {
                    phonenumber = value as int;
                  },
                ),
                TextField(
                  decoration:
                      const InputDecoration(labelText: 'Enter Order Address'),
                  onChanged: (value) {
                    address = value;
                  },
                ),
                Pizzatypewidget(f: updatepizzatype),
                Pizzasizewidget(f: updatesize),
                Pizzacrusttype(f: updatecrusttype),
                Pizzatoppings(
                    f1: updatewithmashrooms,
                    f2: updatewitholives,
                    f3: updatewithgreenPeppers),
                Pizzasauce(f: updatesauce),
                const SizedBox(height: 30),
                Text('Total Price ${UpdatePrice()} \$',
                style: const TextStyle(
                  fontSize: 30,
                  backgroundColor: Colors.blue,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updatecrusttype(selectedtype) {
    crustype = selectedtype;
    UpdatePrice();
  }

  void updatesauce(selectedtype) {
    sauce= selectedtype;
    UpdatePrice();
  }

  void updatesize(selectedtype) {
    pizzaSize = selectedtype;
    UpdatePrice();
  }

  void updatewithmashrooms(selectedtype) {
    withMashrooms = selectedtype;
    UpdatePrice();
  }

  void updatewitholives(selectedtype) {
    withOlives = selectedtype;
    UpdatePrice();
  }

  void updatepizzatype(selectedtype) {
    pizzatype = selectedtype;
    UpdatePrice();
  }

  void updatewithgreenPeppers(selectedtype) {
    withgreenpeppers = selectedtype;
    UpdatePrice();
  }

  // ignore: non_constant_identifier_names
  double UpdatePrice() {
    double tempprice=0;
    switch (crustype) {
      case 'Thin':
        tempprice += 0;
        break;
      case 'Thick':
        tempprice += 4;
        break;
      case 'Stuffed':
        tempprice += 7;
        break;
    }

    switch (pizzatype) {
      case 'Margeritha':
        tempprice += 5;
        break;
      case 'Pepperoni':
        tempprice += 7;
        break;
      case 'BBK chicken':
        tempprice += 10;
        break;
    }

    switch (pizzaSize) {
      case 'Small':
        tempprice += 10;
        break;
      case 'Large':
        tempprice += 18;
        break;
      case 'Medium':
        tempprice += 14;
        break;
    }
    if(withMashrooms)
    {
      tempprice+=2;
    }
    if(withOlives)
    {
      tempprice+=1;
    }
    if(withgreenpeppers)
    {
      tempprice+=2;
    }
    
    switch (sauce) {
      case 'Tomato':
        tempprice += 1;
        break;
      case 'BBK':
        tempprice +=2;
        break;
    }
    setState(() {
      totalprice=tempprice;
    });
    return tempprice;
  }
}
