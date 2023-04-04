import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:io';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:virtualcreditcard/virtualcreditcard.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Design extends StatefulWidget {
  const Design();

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
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
    return Container(
        alignment: Alignment.center,
        //margin: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.green, Colors.white])),
        child: _safeAreaCard());
  }
}

Widget titleSection_card = Container(
    alignment: Alignment.center,
    //margin: EdgeInsets.all(10),
    margin: EdgeInsets.only(bottom: 10),
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.green, Colors.white])),
    child: _safeAreaCard());

SafeArea _safeAreaCard() {
  List itemColors = [
    Color.fromARGB(255, 243, 164, 190),
    Color.fromARGB(255, 141, 248, 146),
    Colors.blue
  ];
  int currentIndex = 0;
  return SafeArea(
    child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.8,
              child: SizedBox(
                height: 170,
                width: double.infinity,
                child: CarouselSlider(
                  items: [
                    for (int i = 0; i < itemColors.length; i++)
                      Container(
                        alignment: Alignment.center,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: itemColors[i],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: Offset(4, 4))
                            ]),
                        child: Text(
                          'บัญชีที่ ${i + 1}',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )
                  ],
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      // setState(() {
                      print(reason.toString());
                      currentIndex = index;
                      // });
                    },
                    // autoPlay: true
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < itemColors.length; i++)
                  Container(
                    height: 13,
                    width: 13,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: currentIndex == i ? Colors.blue : Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(2, 2))
                        ]),
                  )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
