// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PizzaType extends StatelessWidget {
final String pizzaType;
final bool isSelected;
final VoidCallback onTap;
PizzaType({required this.pizzaType,
required this.isSelected,
required this.onTap,
});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Text(pizzaType,
        style: TextStyle(
          fontSize: 18,
          fontWeight:FontWeight.bold,
          color:isSelected? Colors.orange:Colors.white,
          ),
        ),
      ),
    );
    
  }
}