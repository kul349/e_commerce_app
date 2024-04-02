import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/home/food_page_body.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: const EdgeInsets.only(
              top: 45,
              bottom: 15,
            ),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Nepal",
                      color: AppColors.mainColor,
                      size: 30,
                    ),
                    Row(children: [
                      SmallText(
                        text: "Hadiya",
                        color: Colors.black45,
                      ),
                      Icon(Icons.arrow_drop_down_rounded)
                    ])
                  ],
                ),
                Center(
                  child: Container(
                    height: 45,
                    width: 45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        FoodPageBody()
      ],
    ));
  }
}
