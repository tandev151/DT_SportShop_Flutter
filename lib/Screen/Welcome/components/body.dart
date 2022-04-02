import 'package:flutter/material.dart';
import 'package:sp_shop_app/Screen/SignUp/sign_up_screen.dart';
import 'package:sp_shop_app/Screen/Welcome/components/background.dart';
import 'package:sp_shop_app/Constants/constants.dart';
import 'package:sp_shop_app/Screen/Login/login_screen.dart';
import '../../../Components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.12),
            Text(
              "Welcome to DOUBLE T SPORT",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            // SvgPicture.asset(
            //   "assets/icons/chat.svg",
            //   height: size.height*0.7,

            // ),

            Image.asset("assets/img/logo.png", height: size.height * 0.4),
            RoundedButton(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              text: Constants.LOGIN,
              textColor: whiteColor,
              color: kPrimaryColor,
            ),
            RoundedButton(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              text: Constants.SIGN_UP,
              textColor: whiteColor,
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
