import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "../../../assets/img/signup_top.png",
                height: size.height * 0.15,
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("../../../assets/img/main_bottom.png",
                  height: size.height * 0.2)
          ),
          child
        ],
      ),
    );
  }
}