import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Home_Page/Middle_Body.dart';
import 'package:food_delivery_app/Widgets/Big_Text.dart';
import 'package:food_delivery_app/Widgets/Small_Text.dart';

import 'Middle_Body.dart';

class Main_Food_Page extends StatefulWidget {
  const Main_Food_Page({Key? key}) : super(key: key);

  @override
  State<Main_Food_Page> createState() => _Main_Food_PageState();
}

class _Main_Food_PageState extends State<Main_Food_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Big_Text(text: "Telangana", color: Colors.cyan, size: 25),
                      Row(
                        children: [
                          Small_Text(text: "karimnagar", color: Colors.black),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search_outlined, color: Colors.limeAccent),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.greenAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: Food_Page_Body(),
          )),
        ],
      ),
    );
  }
}
