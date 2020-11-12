import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        new SizedBox(
          width: 40,
          height: 30,
          child: OutlineButton(onPressed: (){
            setState(() {
              if(numOfItems<1){
                numOfItems=numOfItems-1;
              }
            });
          },
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
            child: new Center(
              child: Icon(Icons.remove),
            ),),
        ),
        new Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: new Text(numOfItems.toString().padLeft(2,"0"),style: Theme.of(context).textTheme.headline6,),
        ),
        new SizedBox(
          width: 40,
          height: 30,
          child: OutlineButton(onPressed: (){
            setState(() {
              numOfItems=numOfItems+1;
            });
          },
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
            child: new Center(
              child: Icon(Icons.add),
            ),),
        ),
      ],
    );
  }
}
