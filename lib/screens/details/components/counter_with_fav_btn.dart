import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/models/product.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  final Product product;
  CounterWithFavBtn({this.product});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        new CartCounter(),
        new Container(
          width: 32,
          height: 32,
          padding: EdgeInsets.all(8),
          decoration: new BoxDecoration(
            color: Color(0xffff6464),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
