import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:io';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

Widget titleSection = Container(
  //height: 100,
  alignment: Alignment.center,
  margin: EdgeInsets.all(20),
  height: 150,
  width: double.infinity,
  decoration: BoxDecoration(
    color: Colors.white70,
    borderRadius: BorderRadius.circular(5), //border corner radius
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), //color of shadow
        spreadRadius: 5, //spread radius
        blurRadius: 7, // blur radius
        offset: Offset(0, 2), // changes position of shadow
        //first paramerter of offset is left-right
        //second parameter is top to down
      ),
      //you can set more BoxShadow() here
    ],
  ),
  child: _buildAccountMember(),
);

Column _buildAccountMember() {
  int pageIndex = 0;

  return Column(
    children: [
      ImageSlideshow(
        /// Width of the [ImageSlideshow].
        width: double.infinity,

        // /// Height of the [ImageSlideshow].
        height: 130,

        // /// The page to show when first creating the [ImageSlideshow].
        // initialPage: 0,

        // /// The color to paint the indicator.
        // indicatorColor: Colors.blue,

        // /// The color to paint behind th indicator.
        // indicatorBackgroundColor: Colors.grey,
        children: <Widget>[
          _buildCardListView2(
              acc_type: "เงินฝากวาดีอะฮ์",
              balance: '1,000.00',
              available: '1,000.00'),
          _buildCardListView2(
              acc_type: "ทุนเรือนหุ้น",
              balance: '2,000.00',
              available: '2,000.00'),
          _buildCardListView2(
              acc_type: "สินเชื่อ", balance: '3,000.00', available: '3,000.00'),
        ],
      ),
    ],
  );
}

Card _buildCardListView2(
    {required String acc_type,
    required String balance,
    required String available}) {
  // return Card(child: Image.asset(url)
  return Card(
      child: Container(
    child: ImageSlideshow(
      /// Width of the [ImageSlideshow].
      // width: double.infinity,

      // /// Height of the [ImageSlideshow].
      // height: 100,

      // /// The page to show when first creating the [ImageSlideshow].
      // initialPage: 0,

      // /// The color to paint the indicator.
      // indicatorColor: Colors.blue,

      // /// The color to paint behind th indicator.
      // indicatorBackgroundColor: Colors.grey,
      children: <Widget>[
        Container(
            //height: 100,
            // alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(30), //border corner radius
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.5), //color of shadow
              //     spreadRadius: 5, //spread radius
              //     blurRadius: 7, // blur radius
              //     offset: Offset(0, 2), // changes position of shadow
              //     //first paramerter of offset is left-right
              //     //second parameter is top to down
              //   ),
              //   //you can set more BoxShadow() here
              // ],
            ),
            child: Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          acc_type,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'ยอดเงินคงเหลือ:' +
                              '                    ' +
                              balance +
                              ' บาท',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'ยอดเงินที่ใช้ได้:' +
                              '                      ' +
                              available +
                              ' บาท',
                          style: TextStyle(fontSize: 16, color: Colors.red),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ],
    ),
  ));
}
