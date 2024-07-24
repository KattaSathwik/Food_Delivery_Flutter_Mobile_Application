import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/All_Colours/using_colours.dart';
import 'package:food_delivery_app/Utils/dimensions.dart';

import 'Small_Text.dart';

class Expandable_Text extends StatefulWidget {
  final String exp_Intro_Text;

  const Expandable_Text({Key? key, required this.exp_Intro_Text})
      : super(key: key);

  @override
  State<Expandable_Text> createState() => _Expandable_TextState();
}

class _Expandable_TextState extends State<Expandable_Text> {
  late String first_Half;
  late String second_Half;

  bool hidden_Text = true;

  double text_Height = Dimensions.screen_Height / 5.63;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.exp_Intro_Text.length > text_Height) {
      first_Half = widget.exp_Intro_Text.substring(0, text_Height.toInt());
      second_Half = widget.exp_Intro_Text
          .substring(text_Height.toInt() + 1, widget.exp_Intro_Text.length);
    } else {
      first_Half = widget.exp_Intro_Text;
      second_Half = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: second_Half.isEmpty ? Small_Text(height : 1.6, color: AppColors.paraColor, text: first_Half,) : Column(
        children: [
          Small_Text(height : 1.6, size : Dimensions.font_16, text: hidden_Text ? (first_Half + "....") : (first_Half + second_Half), color: AppColors.paraColor,),
          InkWell(
            onTap: () {
              setState(() {
                hidden_Text = !hidden_Text;
              });
            },
            child: Row(
              children: [
                Small_Text(text: hidden_Text ? "Show more" : "Show Less", color: AppColors.mainColor,),
                Icon(hidden_Text?Icons.arrow_drop_down_circle_outlined : Icons.keyboard_arrow_up_outlined, color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
