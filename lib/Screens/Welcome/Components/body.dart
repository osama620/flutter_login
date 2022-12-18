import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/Screens/Login/login_screen.dart';
import 'package:login_app/Screens/Signup/signup_screen.dart';
import 'package:login_app/Screens/Welcome/Components/background.dart';
import 'package:login_app/components/rounded_button.dart';
// ignore: unused_import
import 'package:login_app/constant.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Text(
              "WELCOME TO DEVELOPERS 99",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05,),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height:size.height * 0.45,
                ),
                SizedBox(height: size.height * 0.05,),
                // ignore: sized_box_for_whitespace
                RoundedButton(
                  text: "LOGIN",
                  press: () {Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));},
                  ),
                  RoundedButton(
                  text: "SIGN UP",
                  color: KPrimaryLightColor,
                  textColor: Colors.black,
                  press: () {Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();}));}
                  ,)
              ],
              ),
      ),
            );
  }
}

