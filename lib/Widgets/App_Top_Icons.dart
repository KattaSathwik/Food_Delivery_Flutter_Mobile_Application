import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/Utils/dimensions.dart';

class App_Top_Icons extends StatelessWidget {
  final IconData iconData;
  final Color bg_Color;
  final Color icon_Color;
  final double size;
  final double icon_Size;

  const App_Top_Icons(
      {Key? key,
      required this.iconData,
      this.bg_Color = const Color(0xFFfcf4e4),
      this.icon_Color = const Color(0xFF756d54),
      this.size = 40, this.icon_Size = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: bg_Color
      ),
      child: Icon(
        iconData,
        color: icon_Color,
        size: icon_Size,
      ),
    );
  }
}
