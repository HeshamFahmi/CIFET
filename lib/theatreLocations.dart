import 'package:flutter/material.dart';

import 'constant.dart';

class TheatreLocations extends StatefulWidget {
  @override
  _TheatreLocationsState createState() => _TheatreLocationsState();
}

var theatreLocations = [
  "مسرح الجمهوريه",
  "دار الاوبرا المصريه",
  "السلام",
  "الطليعه",
  "العرائس",
  "صنربول",
  "الجيزه الثقافى",
  "معهد الفنون المسرحيه",
  "البالون قاعه صلاح جاهين",
  "الهناجر"
];

class _TheatreLocationsState extends State<TheatreLocations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("خرائط المســارح", context, false),
        backgroundColor: Colors.transparent,
        body: Center(
          child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: theatreLocations.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.yellowAccent,
                    ),
                    width: double.infinity,
                    child: customTxt(theatreLocations[index], secondColor),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
