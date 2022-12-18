import 'package:flutter/material.dart';
import 'package:login_app/constant.dart';
// ignore: use_key_in_widget_constructors
class OrDivider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.02),
      width: size.width * 0.8,
      child: Row(
        children:  <Widget> [
          buildDivider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "OR", 
                style: TextStyle
                (color: KPrimaryColor, 
                fontWeight: FontWeight.w600,
                ),
                ),
            ),
              buildDivider(),
            ],
            ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
          );
  }
}

