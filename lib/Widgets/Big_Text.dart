import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/Utils/dimensions.dart';

class Big_Text extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  Big_Text(
      {Key? key,
      this.color,
      required this.text,
      this.size = 1,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontFamily: "IndieFlower",
          color: color,
          fontSize: size == 1 ? Dimensions.font_20 : size,
          fontWeight: FontWeight.w400),
    );
  }
}

