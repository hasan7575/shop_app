import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/screens/details/components/counter_with_fav_btn.dart';
import 'package:shopapp/screens/details/components/product_title_with_image.dart';

import 'color_and_size.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;
 Body({@required this.product});
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: new Column(
        children: [
          new SizedBox(
            height: size.height,
            child: new Stack(
              children: [
                new Container(
                  margin: EdgeInsets.only(
                    top: size.height*0.3,
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: size.height*0.12
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: new Column(
                    children: [
                      ColorAndSize(product: product,),
                      SizedBox(height: 10,),
                      Description(product: product,),
                      SizedBox(height: 10,),
                      CounterWithFavBtn(product: product,)
                    ],
                  ),
                ),
                ProductTitleWithImage(product:product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
