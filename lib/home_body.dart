import 'package:flutter/material.dart';
import 'allproducts.dart';
import 'category.dart';


class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:<Widget>[
        SizedBox(height: 10,),
        Text('Categories',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        SizedBox(height: 10,),
        Category(),
        SizedBox(height: 10,),
        Text('Products',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        Container(
            height:200,
            child: AllProducts()
        ),

      ],
    );
  }
}
