import 'package:flutter/material.dart';

class CarItems extends StatelessWidget {
  final String name;
  final String value;
  const CarItems({super.key, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        Text(value, style: TextStyle(color: Colors.white),),
      ],
    );
  }
}
