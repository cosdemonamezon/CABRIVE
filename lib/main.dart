import 'package:CABRIVE/Screen/Home/HomeScreen.dart';
import 'package:CABRIVE/Screen/Login/LoginScreen.dart';
<<<<<<< HEAD
import 'package:CABRIVE/Screen/Avartar/AvartarScreen.dart';
import 'package:CABRIVE/Screen/Calendar/CalendarScreen.dart';

=======
>>>>>>> 5f2f9ced1862e6927cc307c46abf0a60f7350878
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
<<<<<<< HEAD
          '/': (context) => CalendarScreen(),
          '/Avartar': (context) => AvartarScreen(),
=======
          '/': (context) => LoginScreen(),
          '/detailnews': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
>>>>>>> 5f2f9ced1862e6927cc307c46abf0a60f7350878
        });
  }
}
