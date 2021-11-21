import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

var newsTitles = [
  "فريق عمل النشره اليوميه",
  "العدد الاول ",
  "العدد الثانى",
  "العدد الثالث",
  "العدد الرابع"
];

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("النشــره", context, false),
        backgroundColor: Colors.transparent,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(newsTitles.length, (index) {
              return GestureDetector(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => screens[index]),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.folder,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customTxt(newsTitles[index], mainColor),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
