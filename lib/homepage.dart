import 'package:CIFET/aboutUs.dart';
import 'package:CIFET/articlesPeople.dart';
import 'package:CIFET/constant.dart';
import 'package:CIFET/contactUs.dart';
import 'package:CIFET/gallery.dart';
import 'package:CIFET/highPeople.dart';
import 'package:CIFET/news.dart';
import 'package:CIFET/newsPeople.dart';
import 'package:CIFET/notifications.dart';
import 'package:CIFET/prizes.dart';
import 'package:CIFET/tables.dart';
import 'package:CIFET/theatreLocations.dart';
import 'package:CIFET/versions.dart';
import 'package:CIFET/watches.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CollectionReference users = Firestore.instance.collection("users");

  getdata() {
    users.getDocuments().then((QuerySnapshot querySnapshot) {
      querySnapshot.documents.forEach((element) {
        print(element.data);
      });
    });
  }

  List<String> titlesArabic = [
    "الجداول",
    "الاًصدارات",
    "النشــرة",
    "معرض الصــور",
    "مواقع المسـارح",
    "اللجنة العليــا",
    "المكرمــون",
    "لجنة المشاهــدة",
    "لجنة التحكيم",
    "لجنة الاعلام",
    "الإشعــارات",
    "تواصــل معنا",
    "عن التطبــيق"
  ];

  List<String> titlesEnglish = [
    "El Gadawel",
    "El Asdarat",
    "Galley",
    "El Nashra",
    "Theatre Locations",
    "El Lagna El 3lya",
    "El Mokramoon",
    "Lagna El Moshahda",
    "Lagna Eltahkeem",
    "Lagna El A3lam",
    "Notifications",
    "Contact Us",
    "About Us"
  ];

  List<IconData> iconsOfTitles = [
    FontAwesomeIcons.table,
    FontAwesomeIcons.battleNet,
    FontAwesomeIcons.newspaper,
    FontAwesomeIcons.images,
    FontAwesomeIcons.mapMarkedAlt,
    FontAwesomeIcons.users,
    FontAwesomeIcons.award,
    FontAwesomeIcons.eye,
    FontAwesomeIcons.balanceScale,
    FontAwesomeIcons.satellite,
    Icons.notifications,
    FontAwesomeIcons.handsHelping,
    FontAwesomeIcons.hands
  ];

  var screens = [
    Tables(),
    Versions(),
    News(),
    Gallery(),
    TheatreLocations(),
    HighPeople(),
    Prizes(),
    Watches(),
    NewsPeople(),
    ArticlesPeople(),
    Notifications(),
    ContactUs(),
    AboutUs()
  ];

  @override
  Widget build(BuildContext context) {
    getdata();
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: customAppBar(LocaleKeys.AppName.tr(), context, true),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(titlesArabic.length, (index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screens[index]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    iconsOfTitles[index],
                    size: 50,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  customTxt(
                      EasyLocalization.of(context).locale == Locale("ar")
                          ? titlesArabic[index]
                          : titlesEnglish[index],
                      Colors.white),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
