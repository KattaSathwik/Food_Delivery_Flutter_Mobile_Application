import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/All_Colours/using_colours.dart';
import 'package:food_delivery_app/Widgets/Small_Text.dart';

class Icon_Text_Widget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;

  const Icon_Text_Widget(
      {Key? key,
      required this.iconData,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, color: iconColor,),
        SizedBox(width: 10,),
        Small_Text(text: text, color: AppColors.mainBlackColor,)
      ],
    );
  }
}
