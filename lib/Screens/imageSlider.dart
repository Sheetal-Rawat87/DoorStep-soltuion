import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ImageSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageSliderState();
  }
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;

  List slider = [
    "assets/homeappliance.png",
    "assets/microwave.png",
    "assets/offer.png",
    "assets/onlinebook.png",
    "assets/tv.png",
    "assets/fridgeslide.png",
    "assets/wmslide.png"
  ];

  List sliderName = [
    "HOME APPLIANCES",
    "MICROWAVE SERVICE",
    "ORDER NOW TO AVAIL",
    "BOOK ONLINE",
    "TELEVISION SERVICE",
    "REFRIGERATOR SERVICE",
    "WASHING MACHINE SERVICE"
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      CarouselSlider(
        viewportFraction: 1.0,
        autoPlay: true,
        onPageChanged: (i) {
          setState(() {
            _current = i;
          });
        },
        enlargeCenterPage: false,
        items: map<Widget>(
          slider,
          (index, i) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(i), fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
      Positioned(
        bottom: 0.0,
        left: 0.0,
        right: 0.0,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(200, 0, 0, 0),
                Color.fromARGB(0, 0, 0, 0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Text(
            sliderName[_current],
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ]);
  }
}
