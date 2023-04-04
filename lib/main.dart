import 'dart:io';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _title = "Koperasi App";
  var _myprofile = File('images\LOGO_KOPERASI.png');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            width: 40,
            child: Image.asset('images/avatar_man.png'),
          ),
          centerTitle: true,
          title: Container(
            child: Text('KOPERASI'),
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
                },
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            headerSection,
            titleSection,
            buttonSection,
            courseSection
          ],
        ),
      ),
    );
  }
}

// Widget headerSection = Image.network(
//     "https://www.iscop.co.th/iscop_new/images/slider/banner-0222.jpg");
Widget headerSection = Container(
  // margin: EdgeInsets.only(top: 70),
  padding: EdgeInsets.all(8),
  child: Column(children: <Widget>[
    Container(
      height: 120,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        _buildCardListView(
            url:
                "https://www.iscop.co.th/iscop_new/images/slider/banner-0222.jpg"),
        _buildCardListView(
            url:
                "https://www.iscop.co.th/iscop_new/images/slider/banner-03.jpg"),
        _buildCardListView(
            url:
                "https://www.iscop.co.th/iscop_new/images/slider/banner-01.jpg")
      ]),
    )
  ]),
);

Card _buildCardListView({required String url}) {
  return Card(
    child:
        FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: url),
  );
}

Widget titleSection = Container(height: 100, color: Colors.green);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    // _buildButtonColumn(icon: Icons.mobile_friendly, label: "ถอน-โอน ชำระ"),
    // _buildButtonColumn(icon: Icons.person_outline_sharp, label: "ทุนเรือนหุ้น"),
    // _buildButtonColumn(icon: Icons.monetization_on_sharp, label: "เงินฝาก"),
    // _buildButtonColumn(icon: Icons.location_city, label: "สินเชื่อ"),
    _buildButtonColumn(
        icon: IconButton(
          icon: const Icon(Icons.mobile_friendly),
          tooltip: 'ถอน-โอน ชำระ',
          onPressed: () {
            print("ถอน-โอน ชำระ");
          },
        ),
        label: "ถอน-โอน ชำระ"),
    _buildButtonColumn(
        icon: IconButton(
          icon: const Icon(Icons.person_outline_sharp),
          tooltip: 'ทุนเรือนหุ้น',
          onPressed: () {
            print("ทุนเรือนหุ้น");
          },
        ),
        label: "ทุนเรือนหุ้น"),
    _buildButtonColumn(
        icon: IconButton(
          icon: const Icon(Icons.monetization_on_sharp),
          tooltip: 'เงินฝาก',
          onPressed: () {
            print("เงินฝาก");
          },
        ),
        label: "เงินฝาก"),
    _buildButtonColumn(
        icon: IconButton(
          icon: const Icon(Icons.location_city),
          tooltip: 'สินเชื่อ',
          onPressed: () {
            print("สินเชื่อ");
          },
        ),
        label: "สินเชื่อ")
  ],
);

//Function for Button
Column _buildButtonColumn({required IconButton icon, required String label}) {
  var icColor = Colors.black;
  return Column(
    children: <Widget>[
      IconButton(
        icon: icon,
        onPressed: () {},
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 13, color: icColor),
        ),
      )
    ],
  );
}

Widget courseSection = Container(
  height: 250,
  color: Colors.orange,
);
