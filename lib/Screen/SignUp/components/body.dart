import 'package:flutter/material.dart';
import 'package:sp_shop_app/Components/have_already_an_account.dart';
import 'package:sp_shop_app/Components/rounded_button.dart';
import 'package:sp_shop_app/Components/rounded_input_field.dart';
import 'package:sp_shop_app/Components/rounded_password_field.dart';
import 'package:sp_shop_app/Screen/Login/login_screen.dart';
import 'package:sp_shop_app/Screen/SignUp/components/background.dart';

import '../../../Constants/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Constants.SIGN_UP.toUpperCase(),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
           
            Image.asset("assets/img/logo.png", height: size.height * 0.2),
            RoundedInputField(
              icon: Icon(
                Icons.people,
                color: kPrimaryColor
              ),
              hintText: Constants.FULL_NAME,
            ),
            RoundedInputField(
              icon: Icon(
                Icons.email,
                color: kPrimaryColor
              ),
              hintText: Constants.EMAIL,
            ),
            RoundedPasswordField(hintText: Constants.PASSWORD,),
            RoundedPasswordField(hintText: Constants.CONFIRM_PASSWORD,),
            RoundedButton(press: (){}, text: Constants.SIGN_UP),
            HaveAlreadyAnAccountCheck(press:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginScreen();
              }));
            }, login: false),

          ]),
    );
  }
}
