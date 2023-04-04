import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:io';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

Widget headerSection = Container(
  child: _buildSlideColumn(url: "test"),
);

Column _buildSlideColumn({required String url}) {
  int pageIndex = 0;

  List<Widget> _demo = [
    Container(height: 300, color: Colors.amber),
    Container(height: 300, color: Colors.black),
    Container(height: 300, color: Colors.blue),
    Container(height: 300, color: Colors.green),
  ];
  return Column(
    children: [
      ImageSlideshow(
        /// Width of the [ImageSlideshow].
        width: double.infinity,

        /// Height of the [ImageSlideshow].
        height: 200,

        /// The page to show when first creating the [ImageSlideshow].
        initialPage: 0,

        /// The color to paint the indicator.
        indicatorColor: Colors.blue,

        /// The color to paint behind th indicator.
        indicatorBackgroundColor: Colors.grey,

        /// The widgets to display in the [ImageSlideshow].
        /// Add the sample image file into the images folder
        // children: <Widget>[
        // _buildCardListView(
        //     url:
        //         "https://www.iscop.co.th/iscop_new/images/slider/banner-0222.jpg"),
        // _buildCardListView(
        //     url:
        //         "https://www.iscop.co.th/iscop_new/images/slider/banner-03.jpg"),
        // _buildCardListView(
        //     url:
        //         "https://www.iscop.co.th/iscop_new/images/slider/banner-01.jpg")
        children: <Widget>[
          _buildCardListView(url: "images/slide_1.PNG"),
          _buildCardListView(url: "images/slide_2.PNG"),
          _buildCardListView(url: "images/slide_2.PNG"),
        ],

        /// Called whenever the page in the center of the viewport changes.
        onPageChanged: (value) {
          print('Page changed: $value');
        },

        /// Auto scroll interval.
        /// Do not auto scroll with null or 0.
        autoPlayInterval: 5000,

        // /// Loops back to first slide.
        // isLoop: true,
      ),
    ],
  );
}

Card _buildCardListView({required String url}) {
  return Card(child: Image.asset(url)
      // FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: url),
      );
}
