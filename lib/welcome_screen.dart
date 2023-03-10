import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/login_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
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
                  "Hello",
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                ),
                Text(
                  "You have successfully logged in.",
                  style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
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
                text: "Sign out",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.to(() => LoginPage()),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
