import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/Screens/Login/Components/background.dart';
import 'package:login_app/Screens/Signup/signup_screen.dart';
import 'package:login_app/components/already_have_an_account_acheck.dart';
import 'package:login_app/components/rounded_button.dart';
import 'package:login_app/components/rounded_input_field.dart';
import 'package:login_app/components/rounded_password_field.dart';
// ignore: unused_import
import 'package:login_app/components/text_field_container.dart';
// ignore: unused_import
import 'package:login_app/constant.dart';
class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

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
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset("assets/icons/login.svg",
              height: size.height * 0.35,
              ),
               SizedBox(height: size.height * 0.03),
               RoundedInputField(
                hintText: "Enter Your Email",
                onChanged: (value) {},
                ),
                RoundedPasswordField(onChanged: (value) {},
                ),
                RoundedButton(
                  text: "LOGIN",
                  press: () {}
                  ),
                   SizedBox(height: size.height * 0.03),
      
                  AlreadyHaveAnAccountCheck(
                    press:(){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return SignUpScreen();
                            },
                            ),
                            );
                            },
                            ),
          ],
          ),
      ),
    );
  }
}








