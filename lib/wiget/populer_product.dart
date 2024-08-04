import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PopulerProduct extends StatelessWidget {
  const PopulerProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white54,
      child: Container(color: Colors.white60,
        child: Column(
          children: [ Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Populer Product",
                    style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                  Text("See All", style: TextStyle(color: Colors.black,fontSize: 20)),
                ],
              ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             // Image.asset("assets/images/populer.png"),
              Contain(),Contain2()
              ],
            ),
               
        Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Image.asset("assets/images/headphone.png",height: 80,width: 80,),
       Column(children: [Text("Headphone Holder"),Text(
            "\$3ggggggg9.00",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          )],) ,Text("\(1446)"),Icon(Icons.star,color: Colors.yellow,)],),)
     ],
        ),
      ),
      
    );
    //  Column(crossAxisAlignment: CrossAxisAlignment.end,
    
    //       children: [
    // Icon(Icons.favorite,color: Colors.red,),
    // Image.asset(
    //   "assets/images/leatherbag.png",
    // ),
    // Text("Leather Women Bag"),
    // Row(//mainAxisAlignment: MainAxisAlignment.start,
    //   children: [
    //     Icon(Icons.star),
    //     Text(
    //       "715 review",
    //       style: TextStyle(color: Colors.black54, fontSize: 10),
    //     )
    //   ],
    // )
    //       ],
    //     );
  }
}
Widget Contain(){
  return Container(color: Colors.white70,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [Row( children: [ Icon(Icons.favorite,color: Colors.red,)],),
      Image.asset(
        "assets/images/leatherbag.png",
      ),
      Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
        children: [ Text("Leather Women Bag"),Row(children: [Icon(Icons.star,color: Colors.yellow,),
       Text(
            "715 review",
            style: TextStyle(color: Colors.black54, fontSize: 10),
          ),
           ],), Text(
            "\$135.00",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          )
           
           ],),),
    
    
    ],),
  );
}
///second image 
Widget Contain2(){
  return Container(color: Colors.white70,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [Row( children: [ Icon(Icons.favorite,color: Colors.red,)],),
      Image.asset(
        "assets/images/headphone.png",
      ),
      Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
        children: [ Text("Wireless Headphone"),Row(children: [Icon(Icons.star,color: Colors.yellow,),
       Text(
            "715 review",
            style: TextStyle(color: Colors.black54, fontSize: 10),
          ),
           ],), Text(
            "\$65.00",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          )
           
           ],),),
    
    
    ],),
  );
}