import 'package:flutter/material.dart';
import 'package:food_delivery_app/All_Colours/using_colours.dart';
import 'package:food_delivery_app/Utils/dimensions.dart';
import 'package:food_delivery_app/Widgets/Big_Text.dart';
import 'package:food_delivery_app/Widgets/Expandable_Text.dart';

import '../../Widgets/App_Top_Icons.dart';
class Recommended_Food_Detail extends StatelessWidget {
  const Recommended_Food_Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                App_Top_Icons(
                  iconData: Icons.arrow_back_ios_new_rounded,
                ),
                App_Top_Icons(
                  iconData: Icons.shopping_cart_checkout_sharp,
                )
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: Container(
                  child: Center(
                    child: Big_Text(
                        size: Dimensions.font_26, text: "Indian Dhum Biryani"),
                  ),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius_20),
                        topRight: Radius.circular(Dimensions.radius_20),
                      )),
                )),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width_20, right: Dimensions.width_20),
                  child: Expandable_Text(
                      exp_Intro_Text:
                          "King Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a kingKing Katta is a king"),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width_20 * 2.5,
                right: Dimensions.width_20 * 2.5,
                top: Dimensions.width_10,
                bottom: Dimensions.width_10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                App_Top_Icons(
                  icon_Size: Dimensions.iconsize_24,
                  iconData: Icons.remove_circle_outline_rounded,
                  bg_Color: AppColors.mainColor,
                  icon_Color: Colors.white,
                ),
                Big_Text(text: "\$19.00 " + " x " + " 0 ", color: AppColors.mainBlackColor, size: Dimensions.font_26,),
                App_Top_Icons(
                  icon_Size: Dimensions.iconsize_24,
                  iconData: Icons.add_circle_outline,
                  bg_Color: AppColors.mainColor,
                  icon_Color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(Icons.favorite_sharp, color: AppColors.mainColor,),
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
        ],
      ),
    );
  }
}
