import 'package:CABRIVE/Screen/Chat/ChatScreen.dart';
import 'package:CABRIVE/Screen/Notification/Notification.dart';
import 'package:CABRIVE/Screen/Profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:CABRIVE/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Chat/ChatScreen.dart';
import 'package:CABRIVE/Screen/Avartar/AvartarScreenV2.dart';
import 'package:CABRIVE/Screen/Avartar/SamplePage.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/rugby-balls-01.svg",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                      color: kButtonColor),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/chat.svg",
                        fit: BoxFit.cover,
                        height: 30,
                        width: 30,
                        color: kButtonColor),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/calendar.svg",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                      color: kButtonColor),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/Alert.svg",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                      color: kButtonColor),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/User.svg",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                      color: kButtonColor),
                ],
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NotificationScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Alert.svg",
                      fit: BoxFit.cover, height: 30, width: 30, color: kButtonColor
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/User.svg",
                      fit: BoxFit.cover, height: 30, width: 30, color: kButtonColor
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
