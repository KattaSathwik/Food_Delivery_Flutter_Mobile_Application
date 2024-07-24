import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../All_Colours/using_colours.dart';
import '../Utils/dimensions.dart';
import 'Big_Text.dart';
import 'IconandTextWidget.dart';
import 'Small_Text.dart';

class App_Column extends StatelessWidget {
  final String food_text;
  const App_Column({Key? key, required this.food_text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Big_Text(text: food_text,size: Dimensions.font_26, color: Colors.black87),
        SizedBox(height: Dimensions.height_10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                      (index) => Icon(Icons.star,
                      color: Colors.teal, size: 15)),
            ),
            SizedBox(
              width: 10,
            ),
            Small_Text(
              text: "4.7",
            ),
            SizedBox(
              width: 10,
            ),
            Small_Text(
              text: "191101 comments",
            )
          ],
        ),
        SizedBox(
          height: Dimensions.height_20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon_Text_Widget(
              iconData: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            Icon_Text_Widget(
              iconData: Icons.location_on_sharp,
              text: "1.9",
              iconColor: AppColors.mainColor,
            ),
            Icon_Text_Widget(
              iconData: Icons.timer_sharp,
              text: "17min",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
