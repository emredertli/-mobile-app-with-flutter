// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
final String PizzaImagePath;
final String PizzaName;
final String PizzaPrice;

PizzaTile({
  required this.PizzaImagePath,
  required this.PizzaName,
  required this.PizzaPrice});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
                padding: const EdgeInsets.only(left:22.0,bottom: 22),
                child: Container(
                  padding: EdgeInsets.only(left:30,right: 30,bottom: 40),
                  width: 200,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black54,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Pizza image
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child:
                           Image.network(PizzaImagePath)),
                        ],
                      ),
                      //Pizza name
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 8),
                       child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ignore: prefer_const_constructors
                          Text(PizzaName,
                        style: TextStyle(fontSize: 20),),  
                        SizedBox(height: 4,), 
                        Text("With extra sauce",
                        style: TextStyle(color: Colors.white),) 
                       ],),
                     ),
                      //price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("\$"+PizzaPrice),
                        Container(
                          decoration: BoxDecoration(color: Colors.orange,
                          borderRadius: BorderRadius.circular(6),
                          ),
                          child:
                      
                         Icon(Icons.add)),
                      ],)
                      
    
                    ],
                  ),
                  
                ),
              ),
    );
  }
}