import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/All_Colours/using_colours.dart';
import 'package:food_delivery_app/Utils/dimensions.dart';
import 'package:food_delivery_app/Widgets/App_Column.dart';
import 'package:food_delivery_app/Widgets/Big_Text.dart';
import 'package:food_delivery_app/Widgets/IconandTextWidget.dart';
import 'package:food_delivery_app/Widgets/Small_Text.dart';

class Food_Page_Body extends StatefulWidget {
  const Food_Page_Body({Key? key}) : super(key: key);

  @override
  State<Food_Page_Body> createState() => _Food_Page_BodyState();
}

class _Food_Page_BodyState extends State<Food_Page_Body> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _current_page_value = 0.0;
  double _scalefactor = 0.8;
  double _current_height = Dimensions.page_View_Container;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _current_page_value = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.red,
          height: Dimensions.page_View,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _current_page_value.toInt(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimensions.height_30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.height_30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Big_Text(
                text: "Popular",
                color: Colors.black87,
              ),
              SizedBox(
                width: Dimensions.width_10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: Big_Text(
                  text: ".",
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: Dimensions.width_10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: Small_Text(
                  text: "Food Pairing",
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        //lists of food and imanges
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width_20,
                    right: Dimensions.height_20,
                    bottom: Dimensions.height_10),
                child: Row(
                  children: [
                    // image section
                    Container(
                      width: Dimensions.list_View_Img_Size_120,
                      height: Dimensions.list_View_Img_Size_120,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(Dimensions.radius_20),
                        color: Colors.white38,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/food0.png")),
                      ),
                    ),
                    // text section
                    Expanded(
                      child: Container(
                        height: Dimensions.list_View_Text_Size_100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight:
                                Radius.circular(Dimensions.radius_20),
                                bottomRight:
                                Radius.circular(Dimensions.radius_20)),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.width_10, right: Dimensions.height_10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Big_Text(text: "Nutritious fruit meal in india", color: Colors.black,),
                              SizedBox(height: Dimensions.height_10,),
                              Small_Text(text: "With all Indian Characteristics", color: Colors.black54,),
                              SizedBox(height: Dimensions.height_10,),
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
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _current_page_value.floor()) {
      var curr_Scale = 1 - (_current_page_value - index) * (1 - _scalefactor);
      var currTrans = _current_height * (1 - curr_Scale) / 2;
      matrix = Matrix4.diagonal3Values(1, curr_Scale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _current_page_value.floor() + 1) {
      var curr_Scale =
          _scalefactor + (_current_page_value - index + 1) * (1 - _scalefactor);
      var currTrans = _current_height * (1 - curr_Scale) / 2;
      matrix = Matrix4.diagonal3Values(1, curr_Scale, 1);
      matrix = Matrix4.diagonal3Values(1, curr_Scale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _current_page_value.floor() - 1) {
      var curr_Scale = 1 - (_current_page_value - index) * (1 - _scalefactor);
      var currTrans = _current_height * (1 - curr_Scale) / 2;
      matrix = Matrix4.diagonal3Values(1, curr_Scale, 1);
      matrix = Matrix4.diagonal3Values(1, curr_Scale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var curr_Scale = 0.8;
      var currTrans = _current_height * (1 - curr_Scale) / 2;
      matrix = Matrix4.diagonal3Values(1, curr_Scale, 1);
      matrix = Matrix4.diagonal3Values(1, curr_Scale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.page_View_Container,
            margin: EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius_30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/food0.png"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.page_View_Text_Container,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius_20),
                  color: Colors.grey.withOpacity(0.91),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.green,
                        blurRadius: 5,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.greenAccent, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.greenAccent, offset: Offset(5, 0))
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height_15, left: 15, right: 15),
                child: App_Column(food_text: 'Indian Dhum Biryani',),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
