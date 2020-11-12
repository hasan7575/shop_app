import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/screens/details/detailsScreen.dart';
import 'package:shopapp/screens/home/components/categories.dart';
import 'package:shopapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: new Text(
              'Women',
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Categories(),
          new Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.75),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    Product product = products[index];
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return new DetailsScreen(product: product);
                        }));
                      },
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          new Expanded(
                            child: new Container(
                              padding: EdgeInsets.all(10),
                              decoration: new BoxDecoration(
                                  color: product.color,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Hero(
                                tag: "${product.id}",
                                child: Image.asset(product.image),
                              ),
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: new Text(
                              product.title,
                              style: TextStyle(color: textColorLight),
                            ),
                          ),
                          new Container(
                            child: new Text(
                              product.price.toString(),
                              style: TextStyle(color: textColor),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
