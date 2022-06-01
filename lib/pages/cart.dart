import 'package:flutter/material.dart';
import 'package:e_commerce/main.dart';
// my imports
import 'package:e_commerce/componets/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
            child: Text('Cart')),
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          /* IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),*/
        ],
      ),

      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text("Total: "),
              subtitle: Text("\$230"),
            )),
            Expanded(
                child: MaterialButton(onPressed: (){},
                child: Text("Check out", style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                ),
            )
          ],
        ),
      ),
    );
  }
}
