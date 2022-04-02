import 'package:flutter/material.dart';
import 'package:sp_shop_app/Constants/constants.dart';
class RoundedButton extends StatelessWidget {
  final Function() press;
  final String text;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.press,
    required this.text,
    this.color = kPrimaryColor,
    this.textColor = whiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
          onPressed: press,
          child: Text(text,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold
              )),
        ),
      ),
    );
  }
}
