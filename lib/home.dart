import 'package:flutter/material.dart';
import 'package:flutter_ui_2/Widgets/search_bar.dart';
import 'package:flutter_ui_2/item_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Widget itemCard (String name, String price, String image){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemScreen(name: name, price: price, image: image,)));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 18),
        padding: const EdgeInsets.only(left: 5, top: 20, bottom: 11),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
                backgroundImage: AssetImage("assets/images/$image.png"),
            ),
            const SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
                ),
                const Text("view details", style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 8,
                  decoration: TextDecoration.underline
                ),
                ),
                Text(price, style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFF470B),
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> foodCards(){
    return [
      itemCard("Baked Rice", "Rs. 199 ", "rice"),
      itemCard("Rice Bowl", "Rs. 198 ", "bowl"),
      itemCard("Fried Rice", "", "fried"),
    itemCard("Baked Rice", "Rs. 199 ", "rice"),
      itemCard("Rice Bowl", "Rs. 198 ", "bowl"),
      itemCard("Fried Rice", "", "fried"),
    ];
  }

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 17),
                  decoration: BoxDecoration(
                    color: const Color(0xffFA4A0C),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "25% ",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w800,
                            color: Colors.white
                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: "off",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: "\non all ",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            TextSpan(
                              text: "sushi ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                            TextSpan(
                              text: "orders\nacross app*",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            TextSpan(
                              text: "\nValid till 25th Dec, 2023",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff1E1D1D),
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 17),
                  decoration: BoxDecoration(
                      color: const Color(0xffFA4A0C),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Column(
                    children: [
                      Text.rich(
                        TextSpan(
                            text: "50% ",
                            style: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.w800,
                                color: Colors.white
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: "off",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: "\non all ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              TextSpan(
                                text: "Mac n Cheese ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                              TextSpan(
                                text: "\norders across app*",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              TextSpan(
                                text: "\nValid till 25th Dec, 2023",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff1E1D1D),
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 18, bottom: 30),
              padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 24),
              decoration: const BoxDecoration(
                color: Color(0xff333333),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Text.rich(
                TextSpan(
                  text: "Use code\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: "iLovemyfood\n",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "to get ",
                    ),
                    TextSpan(
                      text: "10% off ",
                      style: TextStyle(
                        color: Color(0xffFA4A0C),
                      ),
                    ),
                    TextSpan(
                      text: "on your orders"
                    ),
                  ]
                )
              ),
            ),
            const DefaultTabController(
              length: 4,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Color(0xffFA4A0C),
                labelColor: Color(0xffFA4A0C),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
                dividerHeight: 0,
                unselectedLabelColor: Color(0xff9A9A9D),
                tabs: [
                  Tab(child: Text("Food"),),
                  Tab(child: Text("Drinks"),),
                  Tab(child: Text("Snacks"),),
                  Tab(child: Text("Sauce"),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: foodCards(),
                        ),
                      ),
                  ),
          ],
        ),
      ),
    );
  }
}
