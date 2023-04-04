import 'dart:io';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:io';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

//import file in lib
import 'package:koperasi/header_design.dart';
import 'package:koperasi/title_design.dart';
import 'package:koperasi/body_design.dart';
import 'package:koperasi/buttom_design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _title = "Koperasi App";
  int pageIndex = 0;

  MaterialColor mycolor = MaterialColor(
    Color.fromRGBO(133, 194, 64, 1).value,
    <int, Color>{
      50: Color.fromRGBO(133, 194, 64, 0.1),
      100: Color.fromRGBO(133, 194, 64, 0.2),
      200: Color.fromRGBO(133, 194, 64, 0.3),
      300: Color.fromRGBO(133, 194, 64, 0.4),
      400: Color.fromRGBO(133, 194, 64, 0.5),
      500: Color.fromRGBO(133, 194, 64, 0.6),
      600: Color.fromRGBO(133, 194, 64, 0.7),
      700: Color.fromRGBO(133, 194, 64, 0.8),
      800: Color.fromRGBO(133, 194, 64, 0.9),
      900: Color.fromRGBO(133, 194, 64, 1),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          primarySwatch: mycolor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
          appBar: AppBar(
            leading: Container(
              width: 40,
              child: Image.asset('images/avatar_man.png'),
            ),
            centerTitle: true,
            title: Container(
              child: Text(
                'KOPERASI SMART',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            actions: [
              Container(
                //width: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: IconButton(
                    icon: Icon(Icons.add_alert_outlined),
                    tooltip: 'แจ้งเตือน',
                    onPressed: () {
                      print("แจ้งเตือน");
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: IconButton(
                  icon: Icon(Icons.logout),
                  tooltip: 'Logout',
                  onPressed: () {
                    print("LOGOUT");
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("ต้องการออกจากระบบ?"),
                            content: Text("ออกจากระบบ"),
                            actions: <Widget>[
                              TextButton(onPressed: () {}, child: Text('ตกลง')),
                              TextButton(
                                  onPressed: () {}, child: Text('ยกเลิก'))
                            ],
                          );
                        });
                  },
                ),
              ),
            ],
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [mycolor, Colors.white])),
              child: ListView(
                children: <Widget>[
                  headerSection,
                  titleSection,
                  buttonSection,
                  courseSection
                ],
              ),
            ),
          )),
    );
  }
}

// class MyApp extends StatelessWidget {
//   var _title = "Koperasi App";
//   var _myprofile = File('images\LOGO_KOPERASI.png');

// }

// Widget headerSection = Image.network(
//     "https://www.iscop.co.th/iscop_new/images/slider/banner-0222.jpg");
