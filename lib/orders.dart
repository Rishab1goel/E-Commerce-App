import 'package:flutter/material.dart';
import 'cart.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart ' as http;

class OrderItem{

  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({

    @required this.id,
    @required this.amount,
    @required this.products,
    @required this.dateTime,

});


}

class Orders with ChangeNotifier{

  List<OrderItem> _orders=[];

  List<OrderItem> get orders{

    return [..._orders];
  }

  Future<void> addOrder(List<CartItem> cartProducts,double total)async{

    final url="https://first-ecom-62762-default-rtdb.firebaseio.com/orders.json";
    final timeStamp=DateTime.now();
    try {
      final response = await http.post(Uri.parse(url), body: json.encode({

        'id': DateTime.now().toString(),
        'amount': total,
        'dateTime': timeStamp.toIso8601String(),
        'products': cartProducts.map((cp) =>
        {

          'id': cp.id,
          'title': cp.name,
          'quantity': cp.quantity,
          'price': cp.price
        }).toList(),

     }));

      _orders.insert(0,OrderItem(

        id:json.decode(response.body)['name'],
        amount:total,
        dateTime: timeStamp,
        products: cartProducts
      ));
      notifyListeners();

     }
     catch(err){

      throw err;

     }
   }
  }

