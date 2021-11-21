import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

const _urlWebSite = 'http://cifet.org/';
const _youtube = 'https://www.youtube.com/channel/UC-sNuUtjXYxWORGD8FW0HTw';
const _facebook = 'https://www.facebook.com/cifetofficial';
const _instgram = 'https://www.instagram.com/cifet.festival/';
const _mobilephone = 'tel:+2001009961093';
const _mail =
    'mailto:cairointernationalfestival@gmail.com?subject=This is Subject Title&body=This is Body of Email';
const _locationInMap = 'https://maps.app.goo.gl/ePEcYMTA5UQcnUs29';

void _launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("تواصــل معنـــا", context, false),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL(_locationInMap);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.yellowAccent,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: customTxt(
                          "مقر المهرجان :- المسـرح القــومى بالعتبــه",
                          secondColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                customTxt("مركز المعــلومات", Colors.white),
                SizedBox(
                  height: 10,
                ),
                customTxt(
                    "يوميـا من الساعه العاشرة صباحا وحتى الرابعه عصرا ماعدا يوم الجمعه",
                    Colors.white),
                SizedBox(
                  height: 30,
                ),
                customContactRow("للتواصــل من خلال البريد الالكترونى",
                    FontAwesomeIcons.mailBulk, _mail),
                SizedBox(
                  height: 10,
                ),
                customContactRow("للتواصل من خلال الاتصال",
                    FontAwesomeIcons.phone, _mobilephone),
                SizedBox(
                  height: 10,
                ),
                customContactRow("لمتابعه الموقع الاليكترونى الرسمى",
                    FontAwesomeIcons.chrome, _urlWebSite),
                SizedBox(
                  height: 10,
                ),
                customContactRow("لمتابعه الفيس بوك الرسمى",
                    FontAwesomeIcons.facebook, _facebook),
                SizedBox(
                  height: 10,
                ),
                customContactRow("لمتابعه حساب الانتسجرام الرسمى",
                    FontAwesomeIcons.instagram, _instgram),
                SizedBox(
                  height: 10,
                ),
                customContactRow("لمتابعه قناة اليوتيوب الرسيمه",
                    FontAwesomeIcons.youtube, _youtube),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
