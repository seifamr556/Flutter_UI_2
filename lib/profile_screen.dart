import 'package:flutter/material.dart';
import 'package:flutter_ui_2/Widgets/button_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController passController = TextEditingController();


  Widget field (bool pass, TextEditingController controller){
    return SizedBox(
      width: 200,
      height: 26,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        obscureText: pass,
        style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color(0xffFF4B3A)
        ),
      ),
    );
  }

  Widget label (String text){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: SizedBox(
        child: Text(text, style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 17,
            color: Color(0xffC4C4C4)
        ),),
      ),
    );
  }

  @override
  void initState() {
    nameController.text = "Ghanshyamsinh Zala";
    emailController.text = "ghza3006@gmail.com";
    addressController.text = "xyx, near abc, bcd road";
    passController.text = "Hello World";
    phoneController.text = "0123456789";
    dobController.text = "13-07-2004";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children:<Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 45),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff333333)
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20,),
                                label("Name:"),
                                label("E-mail:"),
                                label("Address:"),
                                label("Phone:"),
                                label("DOB:"),
                                label("Pass:"),
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(height: 25,),
                                field(false, nameController),
                                const SizedBox(height: 10,),
                                field(false, emailController),
                                const SizedBox(height: 10,),
                                field(false, addressController),
                                const SizedBox(height: 10,),
                                field(false, phoneController),
                                const SizedBox(height: 10,),
                                field(false, dobController),
                                const SizedBox(height: 10,),
                                field(true, passController),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: CircleAvatar(radius: 40 ,child: Image.asset("assets/images/avatar.png",),),
                  ),
                ]
              ),
              const SizedBox(height: 37,),
              const ButtonCard(iconBtn: Icons.settings, labelBtn: "Settings"),
              const SizedBox(height: 30,),
              const ButtonCard(iconBtn: Icons.history, labelBtn: "History"),
              const SizedBox(height: 30,),
              const ButtonCard(iconBtn: Icons.info_outline, labelBtn: "About App"),
              ],
            ),
        ),
      ),
    );
  }
}
