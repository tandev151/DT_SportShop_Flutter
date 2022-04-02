import 'package:flutter/material.dart';
import 'package:sp_shop_app/Components/rounded_button.dart';
import 'package:sp_shop_app/Constants/constants.dart';
import 'package:sp_shop_app/Screen/Login/components/background.dart';
import 'package:sp_shop_app/Screen/SignUp/sign_up_screen.dart';
import '../../../Components/have_already_an_account.dart';
import '../../../Components/rounded_input_field.dart';
import '../../../Components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            Constants.LOGIN.toUpperCase(),
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
          Image.asset("assets/img/logo.png", height: size.height * 0.2),
           SizedBox(
            height: size.height * 0.1,
          ),
          RoundedInputField(
            hintText: Constants.EMAIL,
            icon: Icon(Icons.email),
          ),
          RoundedPasswordField(),
          RoundedButton(press: () {}, text: Constants.LOGIN),
          RoundedButton(
            press: () {},
            text: Constants.LOGIN_GOOGLE,
            color: blueColor,
          ),
          HaveAlreadyAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
