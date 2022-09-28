// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffee_clone/util/pizzaTile.dart';
import 'package:coffee_clone/util/pizza_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List pizzaType=[
    ['Margarita',
    true,
    ],
    ['Pepperoni',
    false,
    ],
    ['Gennaro',
    false,
    ],
    ['White',
    false,
    ],
  ];
  //user tapped on coffee type
  void pizzaTypeSelected(int index){
    setState(() {
      for(int i=0;i<pizzaType.length;i++){
        pizzaType[i][1]=false;
      }
      pizzaType[index][1]=true;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 26, 11),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Icon(Icons.person),
          )
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),
        label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),
        label: '',
        ),
      ],
      ),
      body: Column(children: [
        //find the best Pizza for you
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:25.0),
           child: Text("Find the best Pizza best for you",
           style:GoogleFonts.bebasNeue(
            fontSize: 50,
           ),
           ),
         ),
         SizedBox(height: 25,),
        //search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: TextField(
            decoration:InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Find your Pizza..",
              focusedBorder: OutlineInputBorder(            
                  borderSide: BorderSide(color: Colors.grey.shade600),
                 ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
              ),

            ),
          ),
        ),
        SizedBox(height: 25,),
        //horizontal listview of Pizza titles
         Container(  
         height: 50,
         child: 
         ListView.builder(  
          scrollDirection: Axis.horizontal,
          itemCount: pizzaType.length,
          itemBuilder: (context, index) {
          return PizzaType(
          pizzaType: pizzaType[index][0], 
          isSelected: pizzaType[index][1], 
          onTap: (){
            pizzaTypeSelected(index);
          },
          );
           
         })),

        //horizontal listview of Pizza titles
        Expanded(child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
           PizzaTile(
            PizzaImagePath:"https://images.unsplash.com/photo-1600028068383-ea11a7a101f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            PizzaName: 'Margarita ',
            PizzaPrice: '11.00',
           ),
           
           PizzaTile(
            PizzaImagePath:"https://images.unsplash.com/photo-1628840042765-356cda07504e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
            PizzaName: 'Pepperoni',
            PizzaPrice: '8.90',
           ),
           PizzaTile(
            PizzaImagePath:"https://images.unsplash.com/photo-1555072956-7758afb20e8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            PizzaName: 'Supreme ',
            PizzaPrice: '9.40',
           ),
          PizzaTile(
            PizzaImagePath:"https://images.unsplash.com/photo-1661082568526-ca057cd3ff77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            PizzaName: 'White',
            PizzaPrice: '10.50',
           ),
          ],
        ),
        ),




      ],),
    );
  }
}