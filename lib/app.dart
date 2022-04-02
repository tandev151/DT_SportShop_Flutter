import 'package:flutter/material.dart';
import 'package:sp_shop_app/Constants/constants.dart';
import 'package:sp_shop_app/Screen/profile_screen.dart';
import 'package:sp_shop_app/Screen/Welcome/welcome_screen.dart';
import 'Screen/home_screen.dart';
import 'Screen/collection_sreen.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.white
        
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home:  HomeScreen(),
      home: WelcomeScreen(),
      routes: <String, WidgetBuilder> {
        Constants.COLLECTION_SCREEN: (BuildContext context) => CollectionScreen(),
        Constants.PROFILE_SCREEN: (BuildContext context) => ProfileScreen(),
        Constants.HOME_SCREEN: (BuildContext context) => HomeScreen(),
      },
    );
  }
}
