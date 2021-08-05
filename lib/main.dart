import 'package:ecommerceapp/orders.dart';
import 'package:ecommerceapp/pdt_detail_screen.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:provider/provider.dart';
import 'product.dart';
import 'cart.dart';
import 'cart_screen.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider.value(
          value:Products(),
        ),
        ChangeNotifierProvider.value(
          value:Product(),
        ),
        ChangeNotifierProvider.value(
          value:Cart(),
        ),
        ChangeNotifierProvider.value(
          value:Orders(),
        ),


      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E commerce App',
        theme: ThemeData(

          primaryColor: Colors.teal,
          accentColor:Colors.white,
        ),
        home: Homepage(),
        routes: {

          DetailPage.routeName:(ctx)=>DetailPage(),
          CartScreen.routeName:(ctx)=>CartScreen(),

        },


      ),
    );
  }
}
