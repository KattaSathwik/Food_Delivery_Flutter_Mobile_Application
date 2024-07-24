import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Utils/dimensions.dart';
import 'package:food_delivery_app/Widgets/App_Column.dart';
import 'package:food_delivery_app/Widgets/Expandable_Text.dart';

import '../../All_Colours/using_colours.dart';
import '../../Widgets/App_Top_Icons.dart';
import '../../Widgets/Big_Text.dart';
import '../../Widgets/IconandTextWidget.dart';
import '../../Widgets/Small_Text.dart';

class Popular_Food_Details extends StatelessWidget {
  const Popular_Food_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.Pop_Food_Img_Size,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food0.png"))),
              )),
          // icons widgets
          Positioned(
              top: Dimensions.height_45,
              left: Dimensions.width_20,
              right: Dimensions.height_20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  App_Top_Icons(
                    iconData: Icons.arrow_back_ios_new_rounded,
                  ),
                  App_Top_Icons(
                    iconData: Icons.shopping_cart_checkout_sharp,
                  )
                ],
              )),
          // introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.Pop_Food_Img_Size - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.height_20,
                    right: Dimensions.height_20,
                    top: Dimensions.height_20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius_20),
                      topRight: Radius.circular(Dimensions.radius_20)),
                  color: Colors.grey.withOpacity(0.95),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    App_Column(
                      food_text: 'Indian Dhum Biryani',
                    ),
                    SizedBox(
                      height: Dimensions.height_20,
                    ),
                    Big_Text(text: "Introduce"),
                    SizedBox(
                      height: Dimensions.height_20,
                    ),
                    // brief introduction
                    Expanded(
                        child: SingleChildScrollView(
                            child: Expandable_Text(
                                exp_Intro_Text:
                                    "This is katta sathwik This is katta sathwik This is katta sathwik This is katta sathwikvv height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,height : 1.6,")))
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.list_View_Text_Size_100,
        padding: EdgeInsets.only(
            top: Dimensions.height_20,
            bottom: Dimensions.height_20,
            left: Dimensions.height_20,
            right: Dimensions.height_20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius_20 * 2),
              topRight: Radius.circular(Dimensions.radius_20 * 2)),
          color: Colors.grey.withOpacity(0.15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.height_20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius_20),
                color: Colors.grey.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove_circle_outline_sharp,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width_10 / 2,
                  ),
                  Big_Text(text: "0"),
                  SizedBox(
                    width: Dimensions.width_10 / 2,
                  ),
                  Icon(
                    Icons.add_circle_outline_sharp,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimensions.height_20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius_20),
                color: AppColors.mainColor,
              ),
              child: Big_Text(
                text: "\$10 | Add To Cart",
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
