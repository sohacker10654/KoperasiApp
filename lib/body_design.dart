import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:io';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    // _buildButtonColumn(icon: Icons.mobile_friendly, label: "ถอน-โอน ชำระ"),
    // _buildButtonColumn(icon: Icons.person_outline_sharp, label: "ทุนเรือนหุ้น"),
    // _buildButtonColumn(icon: Icons.monetization_on_sharp, label: "เงินฝาก"),
    // _buildButtonColumn(icon: Icons.location_city, label: "สินเชื่อ"),

    _buildSizedBox3(
        icon: Icons.add_to_home_screen_outlined,
        label: "ถอน-โอน ชำระ",
        color_name: Colors.blue),
    _buildSizedBox3(
        icon: Icons.analytics_outlined,
        label: "ทุนเรือนหุ้น",
        color_name: Colors.green),
    _buildSizedBox3(
        icon: Icons.account_balance_wallet_outlined,
        label: "เงินฝาก",
        color_name: Colors.pink),
    _buildSizedBox3(
        icon: Icons.account_balance,
        label: "สินเชื่อ",
        color_name: Colors.orange),
  ],
);

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

Column _buildButtonColumn2({required IconButton icon, required String label}) {
  var icColor = Colors.black;
  return Column();
}

// Column _buildSizedBox3({required IconButton icon, required String label}) {
Column _buildSizedBox3(
    {required IconData icon,
    required String label,
    required Color color_name}) {
  var icColor = Colors.black;
  return Column(
    children: [
      SizedBox(
        child: SizedBox.fromSize(
          size: Size(56, 56),
          child: ClipOval(
            child: Material(
              color: Colors.white,
              child: InkWell(
                splashColor: Colors.greenAccent,
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      icon,
                      color: color_name,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
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
