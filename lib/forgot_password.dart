import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/login_page.dart';
import 'package:helloworld/welcome_screen.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/loginimg.png"), fit: BoxFit.cover)),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.25),
                  )
                ]),
            child: TextField(
                decoration: InputDecoration(
              labelText: "Email Id:",
              suffixIcon: Icon(
                Icons.email,
                color: Color(0xffff508b),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 1.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 1.0)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            )),
          ),
          SizedBox(height: 20),
          Row(children: [
            Expanded(
              child: Container(),
            ),
            RichText(
              text: TextSpan(
                  text: "Remember your Password?",
                  style: TextStyle(fontSize: 18, color: Colors.grey[500]),
                  recognizer: TapGestureRecognizer()..onTap = () => Get.back()),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover)),
            child: Center(
                child: RichText(
                    text: TextSpan(
                        text: "Done",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => LoginPage())))),
          ),
        ],
      ),
    );
  }
}
