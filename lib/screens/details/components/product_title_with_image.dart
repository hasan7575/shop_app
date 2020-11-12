import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;

  ProductTitleWithImage({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            "Arisocoratic Hand bag",
            style: new TextStyle(color: Colors.white),
          ),
          new Text(
            product.title,
            style: new TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          new SizedBox(
            height: 20,
          ),
          new Row(
            children: [
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    'price',
                    style: new TextStyle(color: Colors.white),
                  ),
                  new Text(
                    '\$${product.price} ',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              new Expanded(
                  child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
