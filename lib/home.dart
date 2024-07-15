import 'package:flutter/material.dart';
import 'package:flutter_ui_2/Widgets/search_bar.dart';
import 'package:flutter_ui_2/item_page.dart';
import 'package:flutter_ui_2/main_screen.dart';
import 'package:flutter_ui_2/orders_screen.dart';
import 'package:flutter_ui_2/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




  List<Widget> screens = [
    const MainScreen(),
    const OrdersScreen(),
    const ProfileScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F2F2),
        centerTitle: true,
        title: const SearchContainer(),
        leading: Container(
            margin: const EdgeInsets.only(left: 27),
            child: const Icon(Icons.menu, size: 30,)),
        actions: [
          CircleAvatar(
            backgroundColor: const Color(0xffC4C4C4),
            child: Image.asset("assets/images/avatar.png", width: 38.46, height: 40,),
          ),
          const SizedBox(width: 38.46,),
        ],
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        selectedItemColor: const Color(0xffFF470B),
        unselectedItemColor: const Color(0xffC4C4C4),
        iconSize: 30,
        currentIndex: selectedIndex,
        onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
        },
      ),
    );
  }
}
