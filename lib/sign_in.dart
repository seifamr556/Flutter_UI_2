import 'package:flutter/material.dart';
import 'package:flutter_ui_2/home.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF4B3A),
      body: Padding(
        padding: const EdgeInsets.only(left: 27, top: 75, right: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Sign in",
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
          
                  ),),
                  TextButton(onPressed: () {}, child: const Text("Reset password",
                    style: TextStyle(
                      color: Color(0xff111111),
                      fontSize: 13,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                    ),)),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    ),
                    ),
                    SizedBox(height: 5,),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Password", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),),
                        Row(
                          children: [
                            Icon(Icons.visibility_off, color: Colors.white, size: 24,),
                            SizedBox(width: 10,),
                            Text("Hide", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: null, side: BorderSide(color: Colors.white),),
                        Text("Remember me", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(350, 64)),
                    backgroundColor: MaterialStatePropertyAll(Color(0xff111111)),
                ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w500),
                  ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 23),
                      height: 2,
                      width: 110,
                      color: const Color(0xff9F9F9F),
                    ),
                    const Text("OR", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 23),
                      height: 2,
                      width: 110,
                      color: const Color(0xff9F9F9F),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(350, 64)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xff111111)),
                ),
                child: const Text(
                  "Create an account",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 20,),
              OutlinedButton.icon(
                onPressed: () {},
                style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(350, 64)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xffffffff)),
                ),
                icon: Image.asset("assets/images/google.png", width: 24, height: 24,),
                label: const Text(
                  "Continue with Google",
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(height: 216,)
            ],
          ),
        ),
      ),
    );
  }
}
