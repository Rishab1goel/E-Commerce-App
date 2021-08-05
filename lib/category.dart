import 'package:flutter/material.dart';
import 'category_card.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(

        scrollDirection: Axis.horizontal,
        children:<Widget>[

          CategoryCard(Icon(Icons.book_online_outlined,size: 40,),'Books'),

          CategoryCard(Icon(Icons.computer_rounded,size: 40,),'Computers'),

          CategoryCard(Icon(Icons.games,size: 40,),'Games'),

          CategoryCard(Icon(Icons.laptop_chromebook,size: 40,),'Laptop'),

          CategoryCard(Icon(Icons.pan_tool,size: 40,),'Pantry'),

          CategoryCard(Icon(Icons.electric_car_rounded,size: 40,),'Electronics'),



       ],
      ),
    );
  }
}

