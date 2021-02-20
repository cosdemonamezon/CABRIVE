import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:CABRIVE/Screen/Widgets/NavigationBar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          //height: height,
          child: Column(
            children: [
              Image.asset(
                "assets/87976479_2856061841103856_1014097372642279424_o.png",
                fit: BoxFit.contain,
              ),
              Container(              
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: kCicleColor,
                  ),
                ),
                  child: Card(
                    color: kBackgroundColor,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: CircleAvatar(
                              backgroundColor: kCicleColor,
                              radius: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              Text(
                                "Create Avatar",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                              ),
                              Text(
                                "And setting wallet",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kFontTextColor)
                              ),
                            ]
                            
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "NEW",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Text(
                              "SEE ALL >",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 20,),
                          Container(
                            width: 210,
                            //height: 100,
                            color: kBackgroundColor,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Positioned(
                                  bottom: 3.0,
                                  child: Container(
                                    height: 120,
                                    width: 210,
                                    //color: Colors.white,
                                    decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "RETROUVEZ LE RESUME ET ",
                                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                                            ),
                                          ],
                                        ),
                                        Row(
                                          //mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "LES PHOTOS DE LA VICTOR",
                                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 12,),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    //color: Colors.green,
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(18),
                                          topRight: Radius.circular(18)
                                        ),
                                        child: Image.asset(
                                          "assets/145191267_3741130079263690_2731191343081539548_o.jpg",
                                          width: 210,
                                          height: 140,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 210,
                            //height: 100,
                            color: kBackgroundColor,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Positioned(
                                  bottom: 3.0,
                                  child: Container(
                                    height: 120,
                                    width: 210,
                                    //color: Colors.white,
                                    decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "MI-TEMPS / APRES UNE ",
                                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "PREMIERE PERIODE",
                                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 12,),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    //color: Colors.green,
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(18),
                                          topRight: Radius.circular(18)
                                        ),
                                        child: Image.asset(
                                          "assets/144255167_3737014689675229_3783920849437474356_o.jpg",
                                          width: 210,
                                          height: 140,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "STADIUM",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Text(
                              "SEE ALL >",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: kFontPrimaryColor)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 110,
                              width: 180,
                              //color: Colors.red,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/FIFA_World_Cup_2010_Mexico_VS_South_Africa.jpg"),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "FNB",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                                ),
                              ),
                            ),
                            Container(
                              height: 110,
                              width: 180,
                              //color: Colors.green,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/State_of_Origin_Game_II_2018.jpg"),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "ANZ",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                     ),

                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 110,
                              width: 180,
                              //color: Colors.red,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/Stade_de_Twickenham_à_Londres.jpg"),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "TWICKENHAM",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                                ),
                              ),
                            ),
                            Container(
                              height: 110,
                              width: 180,
                              //color: Colors.green,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/StadeFranceNationsLeague2018.jpg"),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "STADE DE",
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                                    ),
                                    Text(
                                      "FRANCE",
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontPrimaryColor)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                     ),
                   
                  ],
                ),
              
            ],          
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}