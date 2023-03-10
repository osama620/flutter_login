import 'package:flutter/material.dart';
import 'package:login_app/components/text_field_container.dart';
import 'package:login_app/constant.dart';
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key, 
    required this.hintText, 
    this.icon = Icons.person, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFiledContainer(
      child: TextField(
        onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(
          icon, color: KPrimaryColor,
          ),
        hintText: hintText,
        border: InputBorder.none,
        ),
    ),);
  }
}