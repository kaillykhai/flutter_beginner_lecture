import 'package:flutter/material.dart';

class ParentViewLecture extends StatelessWidget {
  List<String> fruits = [
    "Apple",
    "Orange",
    "Banana",
    "PineApple",
    "Papaya",
    "Grape",
    "Plum",
    "Guava",
    "Cherry",
    "Tomato",
    "GAn",
    "Banana",
    "PineApple",
    "Papaya",
    "Grape",
    "Plum",
    "Guava",
    "Cherry",
    "Tomato",
    "Banana",
    "PineApple",
    "Papaya",
    "Grape",
    "Plum",
    "Guava",
    "Cherry",
    "Tomato",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
      ),
      // implement the list view
      body: ListView.builder(
        // the number of items in the list
        itemCount: fruits.length,
        // display each item of the fruit list
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            key: ValueKey(fruits[index]),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Padding(
                padding: const EdgeInsets.all(10), child: Text(fruits[index])),
          );
        },
      ),
    );
  }
}
