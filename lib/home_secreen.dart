import 'package:flutter/material.dart';
import 'package:menu/food_item.dart';
import 'package:menu/model/food.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var foods = [
    Food(name: 'Burger', imgPath: 'assets/burger.png'),
    Food(name: 'Pasta', imgPath: 'assets/pasta.png'),
    Food(name: 'Pizza', imgPath: 'assets/pizza.png'),
    Food(name: 'biryani', imgPath: 'assets/biryani.png'),
    Food(name: 'suchi', imgPath: 'assets/suchi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Menu App',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FoodItem(food: foods[index]);
        },
      ),
    );
  }
}
