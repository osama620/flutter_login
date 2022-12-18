import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/constant.dart';
class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function()? press;
  const SocialIcon({
    Key? key, 
    required this.iconSrc, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(border: Border.all(width: 2,
        color: KPrimaryColor,
        ),
        shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
        height: 20,
        width: 20,
        ),
      ),
    );
  }
}