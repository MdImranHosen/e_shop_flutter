import 'package:flutter/material.dart';
import 'package:e_commerce/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Hills 1",
      "picture": "images/products/hills1.jpeg",
      "old_price": 150,
      "price": 95,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 140,
      "price": 80,
    },
    {
      "name": "Shoe 1",
      "picture": "images/products/shoe1.jpg",
      "old_price": 240,
      "price": 180,
    },
    {
      "name": "Skt 1",
      "picture": "images/products/skt1.jpeg",
      "old_price": 250,
      "price": 190,
    },
    {
      "name": "Blazer 2",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 500,
      "price": 480,
    },
    {
      "name": "Dress 2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 340,
      "price": 280,
    },
    {
      "name": "Hills 2",
      "picture": "images/products/hills2.jpeg",
      "old_price": 280,
      "price": 250,
    },
    {
      "name": "Pants 2",
      "picture": "images/products/pants2.jpeg",
      "old_price": 230,
      "price": 200,
    },
    {
      "name": "Skt 2",
      "picture": "images/products/skt2.jpeg",
      "old_price": 320,
      "price": 280,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Single_prod(
                prod_name: product_list[index]['name'],
                prod_pricture: product_list[index]['picture'],
                prod_old_price: product_list[index]['old_price'],
                prod_price: product_list[index]['price'],
              ),
            );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(
              MaterialPageRoute(
                // here we are passing the values of the product to the product details page
                  builder: (context) => ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_pricture,
              ))
            ),
            child: GridTile(
             footer: Container(
               color: Colors.white70,
               child: Row(
                 children: [
                   Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),),),
                   Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                 ],
               ),
             ),
              child: Image.asset(prod_pricture,
                fit: BoxFit.cover,
              )),
          ),
        ),
      ),
    );
  }
}


