import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/welcome_screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    List imgs = ["g.png", "t.png", "f.png"];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/signup.png"), fit: BoxFit.cover)),
            child: Column(children: [
              SizedBox(height: h * 0.15),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("img/profile1.png"),
                backgroundColor: Colors.white60,
              )
            ]),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
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
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )),
                ),
                SizedBox(height: 30),
                Container(
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
                    labelText: "Password",
                    suffixIcon:
                        Icon(Icons.remove_red_eye, color: Color(0xffff508b)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )),
                ),
                SizedBox(height: 30),
                Container(
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
                    labelText: "Re-enter password",
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xffff508b),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
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
                text: "Sign in",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.to(() => Welcome()),
              ),
            )),
          ),
          SizedBox(height: 10),
          RichText(
              text: TextSpan(
                  text: "Already have an account?",
                  recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  style: TextStyle(fontSize: 20, color: Colors.grey[500]))),
          SizedBox(height: 30),
          Text(
            "OR",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 15),
          Wrap(
            children: List<Widget>.generate(3, (index) {
              GestureDetector(
                onTap: () => {print("Tap"), Get.to(() => Welcome())},
                child: CircleAvatar(),
              );
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.withOpacity(0.25),
                  child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("img/" + imgs[index])),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
