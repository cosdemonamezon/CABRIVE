import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/pages/db/database.dart';
import 'package:CABRIVE/pages/sign-in.dart';
import 'package:CABRIVE/pages/sign-up.dart';
import 'package:CABRIVE/services/facenet.service.dart';
import 'package:CABRIVE/services/ml_vision_service.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:CABRIVE/Screen/Widgets/NavigationBar.dart';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// final List<String> imgList = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];

final List<String> imgList = [
  'assets/charactor/Men-shirt-black.png',
  'assets/charactor/Men-shirt-white.png',
];

class AvartarScreenV2 extends StatefulWidget {
  AvartarScreenV2({Key key}) : super(key: key);

  @override
  _AvartarScreenV2State createState() => _AvartarScreenV2State();
}

class _AvartarScreenV2State extends State<AvartarScreenV2> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CREATE AVARTAR'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(null),
          ),
        ],
        // leading: Container(),
      ),
      body: Column(children: [
        CarouselSlider(
          options: CarouselOptions(
            height: height - 250,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            // autoPlay: false,
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      height: height,
                    )),
                  ))
              .toList(),
          // options: CarouselOptions(
          //     autoPlay: true,
          //     enlargeCenterPage: true,
          //     aspectRatio: 2.0,
          //     onPageChanged: (index, reason) {
          //       setState(() {
          //         _current = index;
          //       });
          //     }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
              constraints: _current == index
                  ? BoxConstraints(minWidth: 30, maxWidth: 60)
                  : null,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: _current == index ? BoxShape.rectangle : BoxShape.circle,
                color: _current == index ? kButtonColor : Colors.white,
                borderRadius: _current == index
                    ? BorderRadius.all(Radius.circular(8.0))
                    : null,
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: kButtonColor)),
              // color: Colors.white,
              textColor: kButtonColor,
              padding:
                  EdgeInsets.only(top: 15, left: 45, right: 45, bottom: 15),
              onPressed: () {},
              child: Text(
                "EDIT".toUpperCase(),
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(width: 10),
            RaisedButton(
              padding:
                  EdgeInsets.only(top: 15, left: 45, right: 45, bottom: 15),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(color: kButtonColor)),
              onPressed: () {},
              color: kButtonColor,
              textColor: kTextButtonColor,
              child: Text("DONE".toUpperCase(), style: TextStyle(fontSize: 18)),
            ),
          ],
        )
      ]),
    );
  }
}
