import 'package:flutter/material.dart';
import 'package:teegram/model/category_model.dart';

class CalegoryScreen extends StatefulWidget {
  const CalegoryScreen({super.key});

  @override
  State<CalegoryScreen> createState() => _CalegoryListState();
}

class _CalegoryListState extends State<CalegoryScreen> {
   int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
          // physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            onTap() {
              setState(() {
                selectedIndex = index;
              });
            }

            return Column(
              children: [
                
                const SizedBox(
                  height: 10,
                ),
                Container(padding: EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),margin: EdgeInsets.only(left: 10),decoration: BoxDecoration( color: Color.fromARGB(255, 140, 137, 137),borderRadius: BorderRadiusDirectional.all(Radius.circular(5))),
                  child: Text(
                    categoriesList[index].title,
                    style: TextStyle( fontSize: 16,color: Colors.white),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              )),
    );
  }
}
