import 'package:flutter/material.dart';
import 'package:teegram/view/category_screen.dart';
import 'package:teegram/wiget/populer_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Home"),
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
       bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white, items: [
       BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.purple,),label: "home" ),
      BottomNavigationBarItem(icon:Icon(Icons.favorite,color: Colors.purple),label: "home",),
      BottomNavigationBarItem(icon:Icon(Icons.shopping_cart,color: Colors.purple),label: "home"),
      BottomNavigationBarItem(icon:Icon(Icons.person,color: Colors.purple),label: "home",)
      ]),
      body: SingleChildScrollView(
        child: Container(color: Colors.white54,
         padding: EdgeInsets.only(right: 30,left: 30),
          child: Column(
            children: [
              Container(
                width: double.infinity,height: 300,
                child: Image.asset(
                  "assets/images/banner.png",
                 // width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                  Text("See All", style: TextStyle(color: Colors.black,fontSize: 20)),
                ],
              ),
              SizedBox(height: 10,),
              CalegoryScreen(),
              PopulerProduct()
              //     CalegoryList()
            ],
          ),
        ),
      ),
    );
  }
}
