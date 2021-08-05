
import 'package:flutter/material.dart';
import 'home_body.dart';
import 'cart_screen.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('E commerce app'),
        actions:<Widget>[
          IconButton(icon:Icon(Icons.shopping_cart),onPressed: ()=>Navigator.of(context).pushNamed(CartScreen.routeName))


        ],
      ),
      body:HomeBody()

    );
  }
}
