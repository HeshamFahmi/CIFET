import 'package:flutter/material.dart';

import 'constant.dart';

class Versions extends StatefulWidget {
  @override
  _VersionsState createState() => _VersionsState();
}

var actorsName = [
  "الهام شاهين",
  "فاروق فلوكس",
  "عبدالله غيث",
  "اشرف عبدالغفور",
  "امال بكير",
  "سامى مغاورى"
];

var actorsImage = [
  "https://media.elcinema.com/uploads/_315x420_b23e2e28e6086733f472d465bb4a6ef70aefd45f2369060884836d5aef0e1005.jpg",
  "https://kollelngoom.com/wp-content/uploads/2016/02/1222.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuQMmdfcbPyaAvzoQrdh4JZaVvmqj--57Cxw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDSbey5HJAUaJjZtAQEojjZVjhe43EeaKlxg&usqp=CAU",
  "https://elmeezan.com/wp-content/uploads/2020/11/%D8%A7%D9%84%D8%B5%D8%AD%D9%81%D9%8A%D8%A9-%D8%A2%D9%85%D8%A7%D9%84-%D8%A8%D9%83%D9%8A%D8%B1.png",
  "https://www.shorouknews.com/uploadedimages/Other/original/84662133456455656.jpg"
];

class _VersionsState extends State<Versions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("الاصــدارات", context, false),
        backgroundColor: Colors.transparent,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(actorsName.length, (index) {
              return GestureDetector(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => screens[index]),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        actorsImage[index],
                        height: 150,
                        fit: BoxFit.cover,
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customTxt(actorsName[index], mainColor),
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
