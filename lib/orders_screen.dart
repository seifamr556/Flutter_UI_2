import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              const SizedBox(height: 40,),
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
              const SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
