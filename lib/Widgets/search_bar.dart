import 'package:flutter/material.dart';
class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffEFEEEE),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: const Color(0xffEFEEEE),
          filled: true,
          hintText: "Search",
          hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w900,
          ),
          prefixIcon: const Icon(Icons.search, size: 26, color: Colors.black,),

        ),
      ),
    );
  }
}
