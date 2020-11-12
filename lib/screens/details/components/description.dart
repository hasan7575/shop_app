import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';

class Description extends StatelessWidget {
  final Product product;

  const Description({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20
      ),
      child: new Text(product.description,style: new TextStyle(
        height: 1.4
      ),),
    );
  }
}
