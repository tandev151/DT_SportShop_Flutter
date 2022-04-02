import 'package:flutter/material.dart';
import 'package:sp_shop_app/Components/text_field_container.dart';
import 'package:sp_shop_app/Constants/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({
    this.hintText,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none),
      onChanged: onChanged,
    ));
  }
}
