import 'package:flutter/material.dart';
import 'package:login_app/constant.dart';
class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function()? press;
  const AlreadyHaveAnAccountCheck({
    Key? key, 
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text(
          login? " Don`t Have an Account ? ": "Already have an Account ? ", 
          style: const TextStyle(color: KPrimaryColor),
          ),
          GestureDetector(
            onTap: press,
            child:  Text(
              login? "Sign Up" : "Sign In", 
              style: const TextStyle(
                color: KPrimaryColor,fontWeight: FontWeight.bold),
            ),
          ),
          ],
          );
  }
}
