import 'package:flutter/material.dart';
import 'pdt_detail_screen.dart';
import 'package:provider/provider.dart';
import 'product.dart';
import 'cart.dart';

class PdtItem extends StatelessWidget {

final String name;
final String imageURL;

PdtItem({ this.name, this.imageURL});
  @override
  Widget build(BuildContext context) {

    final pdt=Provider.of<Product>(context);
    final cart=Provider.of<Cart >(context);

    return GestureDetector(
      onTap:(){
        Navigator.of(context).pushNamed(DetailPage.routeName,arguments:pdt.id);
        
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(imageURL),



        footer: GridTileBar(
          title: Text(name),
          trailing:
          IconButton(icon:Icon(Icons.shopping_cart),
            onPressed:(){
            Scaffold.of(context).showSnackBar(SnackBar(
              duration: Duration(seconds:1),
              content:Text('Items added to cart'),

            ));

            cart.addItems(pdt.id,pdt.name,pdt.price);
            }),
       backgroundColor: Colors.black87,

        ),
        ),
      ),
    );
  }
}
