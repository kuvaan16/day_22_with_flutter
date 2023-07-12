import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool val1 = false;
  bool val2 = true;
  bool val3 = true;
  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(247, 31, 46, 68),
              Color.fromARGB(255, 19, 39, 69),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                right: 20,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Done",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                right: 20,
                left: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Setting",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 3,
              thickness: 1,
              color: Color.fromARGB(38, 255, 255, 255),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("img/kk.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kuvaan16",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "kuvaan16@gmail.com",
                        style: TextStyle(
                          color: Color.fromARGB(61, 255, 255, 255),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            parent(
              Icon(
                FontAwesomeIcons.sliders,
                size: 12,
              ),
              "General",
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                parent(
                  Icon(
                    FontAwesomeIcons.shield,
                    size: 12,
                  ),
                  "Privacy",
                ),
                SizedBox(
                  height: 15,
                ),
                customSwitch("Location", val1, onChangeFunction1),
                SizedBox(
                  height: 15,
                ),
                customSwitch("Show Password", val2, onChangeFunction2),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                parent(
                  Icon(
                    FontAwesomeIcons.solidBell,
                    size: 12,
                  ),
                  "Notification",
                ),
                SizedBox(
                  height: 15,
                ),
                customSwitch("Permissions", val3, onChangeFunction3),
                SizedBox(
                  height: 15,
                ),
                child("Advance"),
                SizedBox(
                  height: 25,
                ),
                parent(
                  Icon(
                    FontAwesomeIcons.display,
                    size: 12,
                  ),
                  "Display",
                ),
                SizedBox(
                  height: 15,
                ),
                child("Color Mode"),
                SizedBox(
                  height: 15,
                ),
                child("Wallpaper"),
                SizedBox(
                  height: 15,
                ),
                child("Advance"),
                SizedBox(
                  height: 25,
                ),
                parent(
                  Icon(
                    FontAwesomeIcons.info,
                    size: 12,
                  ),
                  "Help",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget parent(Icon icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(7),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: icon,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: .3,
            ),
          ),
        ],
      ),
    );
  }

  Widget child(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 60, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Color.fromARGB(102, 255, 255, 255),
              letterSpacing: .3,
            ),
          ),
        ],
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: EdgeInsets.only(left: 60, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Color.fromARGB(102, 255, 255, 255),
              letterSpacing: .3,
            ),
          ),
          FlutterSwitch(
            borderRadius: 10,
            width: 37,
            height: 20,
            toggleSize: 13,
            activeColor: Colors.white,
            inactiveColor: Color.fromARGB(255, 19, 39, 69),
            inactiveSwitchBorder: Border.all(color: Colors.white),
            activeToggleColor: Color.fromARGB(255, 19, 39, 69),
            toggleColor: Colors.white,
            value: val,
            onToggle: (newvalue) {
              onChangeMethod(newvalue);
            },
          )
        ],
      ),
    );
  }
}
