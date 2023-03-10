import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/forgot_password.dart';
import 'package:helloworld/signup_page.dart';
import 'package:helloworld/welcome_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  "Sign into your account",
                  style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                ),
                SizedBox(
                  height: 50,
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
                    labelText: "Email Id",
                    suffixIcon: Icon(Icons.email, color: Colors.pink),
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
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon:
                            Icon(Icons.remove_red_eye, color: Colors.pink),
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
                Row(children: [
                  Expanded(
                    child: Container(),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Forgot your Password?",
                        style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => ForgetPassword())),
                  ),
                ]),
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
                  text: "Sign in",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => Welcome()),
                ),
              ),
            ),
          ),
          SizedBox(height: w * 0.2),
          RichText(
            text: TextSpan(
              text: "Don\'t have an account?",
              style: TextStyle(color: Colors.grey[500], fontSize: 20),
              children: [
                TextSpan(
                    text: " Create",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => SignUpPage())),
              ],
            ),
          )
        ],
      ),
    );
  }
}
