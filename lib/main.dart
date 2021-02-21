
import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/Screen/Login/LoginScreen.dart';
import 'package:CABRIVE/Screen/Avartar/AvartarScreen.dart';

import 'package:CABRIVE/Pages/home.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'C.A.BRIVE',
        theme: ThemeData(
          //primarySwatch: Colors.blue,
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => LoginScreen(),
<<<<<<< HEAD
          '/Avartar': (context) => AvartarScreen(),
=======
          '/detailnews': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
>>>>>>> ad739efa8c433d856468a409d9c89e8d29fc45db
        });
  }
}
