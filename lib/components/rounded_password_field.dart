import 'package:flutter/material.dart';
import 'package:login_app/components/text_field_container.dart';
import 'package:login_app/constant.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFiledContainer(
      child:TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor,
            ),
            suffixIcon: Icon(Icons.visibility,
            color: KPrimaryColor,
            ),
            border: InputBorder.none,
            ),
      ) ,);
  }
}