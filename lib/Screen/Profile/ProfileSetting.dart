import 'package:CABRIVE/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSetting extends StatefulWidget {
  ProfileSetting({Key key}) : super(key: key);

  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  bool listSwith = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SETTING"),
        
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: kBackgroundColor,
              //margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Edit Profile"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    ListTile(
                      title: Text("Change Avatar"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                            //open change password
                      },
                    ),
                    SwitchListTile(
                      activeColor: Colors.purple,
                      contentPadding: const EdgeInsets.all(0),
                      value: listSwith,
                      title: Text("Send me marketing emails"),
                      onChanged: (val) {
                        setState(() {
                          listSwith = true;
                        });
                      },
                    ),
                    SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: listSwith,
                    title: Text("Enable notification"),
                    onChanged: (val) {
                      setState(() {
                          listSwith = true;
                        });
                    },
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: listSwith,
                    title: Text("Remind me to rate this app"),
                    onChanged: (val){
                      setState(() {
                          listSwith = true;
                        });
                    },
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: listSwith,
                    title: Text("Background song refresh"),
                    onChanged: (val) {
                      setState(() {
                          listSwith = true;
                        });
                    },
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: listSwith,
                    title: Text("Recommend me songs based onmy location"),
                    onChanged: (val){},
                  ),
                   SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: listSwith,
                    title: Text("Auto-transition playback to cast devices"),
                    onChanged: null,
                  ),
                   SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: listSwith,
                    title: Text("Find friends from my contact list"),
                    onChanged: null,
                  ),

                  const SizedBox(height: 60.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Logout",
                        style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 18, color: kFontPrimaryColor
                        ),
                      ),
                    ],
                  )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}