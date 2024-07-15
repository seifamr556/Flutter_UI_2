import 'package:flutter/material.dart';

class ButtonCard extends StatefulWidget {
  final IconData iconBtn;
  final String labelBtn;
  const ButtonCard({super.key, required this.iconBtn, required this.labelBtn});

  @override
  State<ButtonCard> createState() => _ButtonCardState(icon: iconBtn, label: labelBtn);
}

class _ButtonCardState extends State<ButtonCard> {

  final String label;
  final IconData icon;

  _ButtonCardState({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 30, color: const Color(0xff9A9A9D),),
              const SizedBox(width: 15,),
              Text(label, style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff201F29)
              ),)
            ],
          ),
          const Icon(Icons.arrow_forward_ios_sharp, size: 20, color: Colors.black,)
        ],
      ),
    );
  }
}
