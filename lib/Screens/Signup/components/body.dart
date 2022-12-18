import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/Screens/Login/login_screen.dart';
import 'package:login_app/Screens/Signup/components/background.dart';
import 'package:login_app/Screens/Signup/components/or_driver.dart';
import 'package:login_app/Screens/Signup/components/social_icons.dart';
import 'package:login_app/components/already_have_an_account_acheck.dart';
import 'package:login_app/components/rounded_button.dart';
import 'package:login_app/components/rounded_input_field.dart';
import 'package:login_app/components/rounded_password_field.dart';
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
        children:  <Widget> [
        const Text(
          "SIGN UP", 
          style:TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.03),
        SvgPicture.asset("assets/icons/signup.svg", 
        height: size.height * 0.35,
        ),
        RoundedInputField(
        hintText: "Enter Your Eamil",
        onChanged: (value){},
        ),
        RoundedPasswordField(onChanged: (value){},
        ),
        RoundedButton(
          text: "SIGN UP",
          press: (){},
          ),
        SizedBox(height: size.height * 0.03),
      
        AlreadyHaveAnAccountCheck(
            login: false,
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                    },
                    ),
                    );
                    },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
             SocialIcon(
              iconSrc: "assets/icons/iconmonstr-github-1.svg",
              press:(){},
              ),
              SocialIcon(
              iconSrc: "assets/icons/icons8-gmail-logo.svg",
              press:(){},
              ),
              SocialIcon(
              iconSrc: "assets/icons/twitter.svg",
              press:(){},
              ),
          ],)
      
          ]),
      ),);
  }
}


// ignore: use_key_in_widget_constructors
