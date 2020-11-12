import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';
class ColorAndSize extends StatelessWidget {
  final Product product;
  ColorAndSize({@required this.product});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        new Expanded(child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Text('Color'),
            new Row(
              children: [
                new ColorDot(isSelected: true,color:  Color(0xFF3D82AE),),
                new ColorDot(color: Color(0xFFD3A984),),
                new ColorDot(color: Color(0xFF989493),),
              ],
            )
          ],
        ),),
        new Expanded(child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Text('Size'),
            new Text('${product.size} cm',style: Theme.of(context).textTheme.headline5.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),)
          ],
        ),),
      ],
    );
  }
}

class ColorDot extends StatelessWidget{
  final bool isSelected;
  final Color color;
  ColorDot({this.isSelected=false,@required this.color});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 24,
      height: 24,
      margin: EdgeInsets.only(
        right: 10,
        top: 5,
      ),
      padding: EdgeInsets.all(2.5),
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:isSelected ?color:Colors.transparent
        )
      ),
      child: new DecoratedBox(decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),),
    );
  }

}
