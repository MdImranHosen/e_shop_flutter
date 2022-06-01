import 'package:flutter/material.dart';
import 'package:e_commerce/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
            child: Text('Fashapp')),
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
         /* IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){}),*/
        ],
      ),

      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: Row(
                    children: [
                      Expanded(child: Text(
                        "\$${widget.product_detail_old_price}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough,),
                      )),
                      Expanded(child: Text(
                        "\$${widget.product_detail_new_price}",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ================= The first buttons ======================
          Row(
            children: [
              // ============== The size button =================
              Expanded(child: MaterialButton(
                onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                     title: Text("Size"),
                      content: Text("Chose the Size"),
                    actions: [
                      MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);
                      },
                        child: Text("Close"),
                      )
                    ],
                  );
                });
              },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                        child: Text("size")
                    ),
                    Expanded(
                        child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
              ),
              // ============== The Color button =================
              Expanded(child: MaterialButton(
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("Color"),
                      content: Text("Chose a Color"),
                      actions: [
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: Text("Close"),
                        )
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                        child: Text("Color")
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
              ),
              // ============== The Qty button =================
              Expanded(child: MaterialButton(
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("Quantity"),
                      content: Text("Chose the Quantity"),
                      actions: [
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: Text("Close"),
                        )
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                        child: Text("Qty")
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
          // ================= The Second buttons ======================
          Row(
            children: [
              // ============== The size button =================
              Expanded(child: MaterialButton(onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: Text("Buy now")
              ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,), onPressed: (){}),

              IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),

            ],
          ),

          Divider(),
          ListTile(
            title: Text("Product details"),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Row(
           children: [
             Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
               child: Text("Product Name", style: TextStyle(color: Colors.grey),),
             ),
             Padding(padding: EdgeInsets.all(5.0),
               child: Text(widget.product_detail_name),
             )
           ], 
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Brand", style: TextStyle(color: Colors.grey),),
              ),
              // Remember to Create the Brand
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),
              )

            ],
          ),
          // Add the Product Condition..
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text("New"),
              )

            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similar Products"),
          ),
          // Similar Product Selection
          Container(
            height: 340.0,
            child: Similar_products(),
          ),
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
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
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
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

