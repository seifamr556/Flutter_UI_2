import 'dart:ffi';

import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {

  final String name;
  final String price;
  final String image;

  const ItemScreen({super.key, required this.name, required this.price, required this.image, });

  @override
  State<ItemScreen> createState() => _ItemScreenState(nameFood: name, priceFood: price, imageFood: image);
}

class _ItemScreenState extends State<ItemScreen> {

  final String nameFood;
  final String priceFood;
  final String imageFood;

  _ItemScreenState({required this.nameFood, required this.priceFood, required this.imageFood});

  String text = "Add to cart";
  Color color = const Color(0xffFA4A0C);
  double sizeImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 41),
          child: IconButton(icon: const Icon(Icons.arrow_back_ios), color: Colors.black, onPressed: () {
            Navigator.pop(context);
          },),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 39),
            child: const Icon(Icons.favorite_border, color: Color(0xff9F9F9F),),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 41.0, right: 41),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage("assets/images/$imageFood.png"),
                  ),
                  const SizedBox(
                    width: 73,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFA4A0C),
                          radius: 3,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xffC4C4C4),
                          radius: 3,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xffC4C4C4),
                          radius: 3,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xffC4C4C4),
                          radius: 3,
                        ),
                      ],
                    ),
                  ),
                  Text(nameFood, style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black
                  ),
                  ),
                  Text(priceFood, style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color(0xffFF470B)
                  ),
                  ),
                ],
              ),
              const Text.rich(
                TextSpan(
                  text: "Description\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: "\nA sizzling taste of the Salmon with crunchiness of freshly baked veggeis and garnished with cherry tomatoes and basil oil",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  TextSpan(
                    text: "\n\nDelivered\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                    TextSpan(
                      text: "\nDelivered within 30mins from your location* if placed now.\nCupon Available.",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    TextSpan(
                      text: "\n\nReviews ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: " 4.4/5 ",
                      style: TextStyle(
                        color: Color(0xffFF470B),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "see all reviews",
                      style: TextStyle(
                        color: Color(0xff9A9A9D),
                        fontSize: 10,
                      ),
                    ),
                  ],
                )
              ),
              const SizedBox(height: 130,),
              SizedBox(
                width: 314,
                height: 70,
                child: OutlinedButton.icon(onPressed: () {
                  setState(() {
                    text = "Added";
                    color = const Color(0xff12AB3D);
                    sizeImage = 18;
                  });
                },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color,
                    foregroundColor: Colors.white,
                  ),
                    icon: Icon(Icons.check_circle_outline, color: const Color(0xff201F29), size: sizeImage,),
                    label: Text(text,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900
                    ),),
                ),
              ),
              const SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
