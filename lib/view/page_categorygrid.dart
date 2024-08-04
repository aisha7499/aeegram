import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:teegram/view/home_screen.dart';

class PageCategoryGrid extends StatelessWidget {
 
  const PageCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
     List myiconList = ["assets/images/bag_icon.png","assets/images/watch_icon.png",
     "assets/images/shoes_icon.png","assets/images/jewllery_icon.png",
     "assets/images/jewllery_icon.png","assets/images/bag_icon.png",
     "assets/images/bag_icon.png","assets/images/bag_icon.png",
     "assets/images/bag_icon.png"];
    return  
    
    Scaffold(appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Home"),
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
       body:
          Column(
            children: [Container(
                width: double.infinity,height: 300,
                child: Image.asset(
                  "assets/images/banner.png",
                 // width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Container(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
                   ), 
                   
                       itemCount: myiconList.length,
              shrinkWrap: true,
                   itemBuilder: (context,index){
              return GestureDetector(child: Image.asset(myiconList[index]),);
                   }),),
            ],
          ),
       
    );}
}