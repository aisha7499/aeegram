import 'package:flutter/material.dart';
import 'package:teegram/view/category_screen.dart';

 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column(children: [ 
        
      Image.asset("assets/images/banner.png",width: double.infinity,),
       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Category",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text("See All"),
                        ],
                      ),
        CalegoryScreen()
   //     CalegoryList()
        ],),
    );}
}