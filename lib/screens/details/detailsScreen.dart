import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/screens/details/components/body.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;
  DetailsScreen({@required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  Widget buildAppBar(context) {
    return new AppBar(
//      backgroundColor: Colors.white,
     backgroundColor: product.color,
      elevation: 0,
      leading: new IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        new IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg",color: Colors.white,),
          onPressed: () {},
        ),
        new IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",color: Colors.white,),
          onPressed: () {},
        ),
        new SizedBox(
          width: 10,
        )
      ],
    );
  }

}
