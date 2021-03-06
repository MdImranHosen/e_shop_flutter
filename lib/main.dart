import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// my own imports
import 'package:e_commerce/componets/horizontal_listview.dart';
import 'package:e_commerce/componets/products.dart';
import 'package:e_commerce/pages/cart.dart';

void main(){
  runApp(
    MaterialApp(
       debugShowCheckedModeBanner: false,
       home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: false,
      /*animationCurve: Curves.fastLinearToSlowEaseIn,
      animationDuration: Duration(milliseconds: 1000),*/
      dotSize: 4.0,
     /* dotColor: Colors.red,*/
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
  );
  
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Fashapp'),
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
          }),
        ],
      ),
      drawer: Drawer(
         child: ListView(
           children: [
            UserAccountsDrawerHeader(
                accountName: Text('Md Imran Hosen'),
                accountEmail: Text('imranhosen.csit@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
             // body

             InkWell(
               onTap: (){
                 setState(() {

                 });
               },
               child: ListTile(
                 title: Text("Home Page"),
                 leading: Icon(Icons.home, color: Colors.red,),
               ),
             ),
             InkWell(
               onTap: (){
                 setState(() {

                 });
               },
               child: ListTile(
                 title: Text("My account"),
                 leading: Icon(Icons.person, color: Colors.red,),
               ),
             ),
             InkWell(
               onTap: (){
                 setState(() {

                 });
               },
               child: ListTile(
                 title: Text("My Orders"),
                 leading: Icon(Icons.shopping_basket, color: Colors.red,),
               ),
             ),
             InkWell(
               onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
               },
               child: ListTile(
                 title: Text("Shopping Cart"),
                 leading: Icon(Icons.shopping_cart, color: Colors.red,),
               ),
             ),
             InkWell(
               onTap: (){
                 setState(() {

                 });
               },
               child: ListTile(
                 title: Text("Favourites"),
                 leading: Icon(Icons.favorite, color: Colors.red,),
               ),
             ),

             Divider(),
             InkWell(
               onTap: (){
                 setState(() {

                 });
               },
               child: ListTile(
                 title: Text("Settings"),
                 leading: Icon(Icons.settings, color: Colors.blue,),
               ),
             ),
             InkWell(
               onTap: (){
                 setState(() {

                 });
               },
               child: ListTile(
                 title: Text("About"),
                 leading: Icon(Icons.help, color: Colors.green,),
               ),
             ),
           ],
         ),
      ),
      body: Column(
        children: [
          // image carousel begins here
          // image_carousel,
          //Padding widget
          Padding(padding: const EdgeInsets.all(4.0),
          child: Container(
             alignment: Alignment.centerLeft,
              child: Text('Categories')),
          ),
          //Horizontal list view begins here
          HorizontalList(),
          //Padding widget
          Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
               alignment: Alignment.centerLeft,
                child: Text('Recent products')),
          ),

          // Grid view
            Flexible(child: Products()),
        ],
      ),
    );
  }
}
