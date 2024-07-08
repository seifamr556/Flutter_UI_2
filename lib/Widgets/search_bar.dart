import 'package:flutter/material.dart';
class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      padding: const EdgeInsets.only(top: 6, bottom: 4, left: 16),
      height: 36,
      decoration: const BoxDecoration(
        color: Color(0xffEFEEEE),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.search, size: 26, color: Colors.black,),
          SizedBox(width: 16,),
          Text("Search",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),),
        ],
      ),
    );
  }
}
