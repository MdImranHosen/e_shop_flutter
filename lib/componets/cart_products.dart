import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50,
      "size": "S",
      "color": "Blue",
      "quantity": 3,
    },
    {
      "name": "Hills 1",
      "picture": "images/products/hills1.jpeg",
      "price": 95,
      "size": "L",
      "color": "Green",
      "quantity": 2,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_products(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_pricture: Products_on_the_cart[index]["picture"],
        );
      });
  }
}

class Single_cart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_products({
   this.cart_prod_name,
   this.cart_prod_pricture,
   this.cart_prod_price,
   this.cart_prod_size,
   this.cart_prod_color,
   this.cart_prod_qty
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //=============== Leading Section ===================
        leading: Image.asset(cart_prod_pricture,width: 80.0,height: 80.0,),

        // =========== Title Section ================
        title: Text(cart_prod_name),

        // =========== Subtitle Section ============
        subtitle: Column(
          children: [
            Row(
              children: [
                //this section if for the size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                ),
                // === This section is for the product color ==
                Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color: "),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_color, style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
            // ========= This section is for the product price ========
            Container(
              alignment: Alignment.topLeft,
              child: Text("\$${cart_prod_price}", style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                 ),
                ),
            )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: [
              IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              Text("$cart_prod_qty"),
              IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}


