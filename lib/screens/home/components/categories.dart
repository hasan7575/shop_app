import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories=["Hand bag","Jewellery","Foot wear","Dresses"];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10),
      child: new SizedBox(
        height: 30,
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context,int index){
          return new GestureDetector(
            child:  Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(categories[index],style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: index==selectedIndex?textColor:textColorLight
                  ),),
                  new Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 30,
                    height: 2,
                    color:index==selectedIndex? Colors.black:Colors.transparent,
                  )
                ],
              ),
            ),
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
          );
        }),
      )
    );
  }
}
