import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';

class Tables extends StatefulWidget {
  @override
  _TablesState createState() => _TablesState();
}

var tableContentList = [
  "فعاليـات اليـوم",
  "جدول النــدوات",
  "جدول الــورش",
  "جدول العــروض"
];

var tableContentIconsList = [
  FontAwesomeIcons.calendar,
  FontAwesomeIcons.bookReader,
  FontAwesomeIcons.chalkboardTeacher,
  FontAwesomeIcons.cameraRetro
];

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("الجــدول", context, false),
        backgroundColor: Colors.transparent,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(tableContentList.length, (index) {
              return GestureDetector(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => screens[index]),
                //),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      tableContentIconsList[index],
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customTxt(tableContentList[index], mainColor),
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
