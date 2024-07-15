import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Orders",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),),
          const Image(image: AssetImage("assets/images/avocado.png"), width: 180,),
          const Text("No orders yet",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
          ),
          const Text("Hit the orange button down\n below to Create an order",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          ),
          SizedBox(
            width: 314,
            height: 70,
            child: OutlinedButton(onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xffFA4A0C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
                child: const Text("Start ordering",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w900
                ),),
            ),
          ),
        ],
      ),
    );
  }
}
