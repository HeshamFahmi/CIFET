import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final mainColor = Colors.blue[900];
final secondColor = Colors.red[800];
final thirdCoror = Colors.blue;
final fouthColor = Colors.yellow;

customAppBar(String title, BuildContext context, bool haveBackButton) {
  return AppBar(
    leading: haveBackButton
        ? Container()
        : IconButton(
            icon: Icon(Icons.arrow_back, color: secondColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
    actions: [
      IconButton(
          icon: FaIcon(FontAwesomeIcons.language),
          onPressed: () {
            EasyLocalization.of(context).locale == Locale("ar")
                ? EasyLocalization.of(context).locale = Locale("en")
                : EasyLocalization.of(context).locale = Locale("ar");
          })
    ],
    title: Text(
      title,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    titleSpacing: 00.0,
    centerTitle: true,
    elevation: 0.00,
    backgroundColor: Colors.transparent,
  );
}

customTxt(String txt, Color color) {
  return Text(txt,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ));
}

backGroundDecoration() {
  return BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/background.jpg"), fit: BoxFit.fill)
      //   gradient: LinearGradient(
      // begin: Alignment.topCenter,
      // end: Alignment.bottomRight,
      // colors: [Colors.cyan, Colors.amber],
      //)
      );
}

void _launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

customContactRow(String txt, IconData icon, String _launcherUrl) {
  return GestureDetector(
    onTap: () {
      _launchURL(_launcherUrl);
    },
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.yellowAccent,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FaIcon(icon, size: 30, color: secondColor),
            customTxt(txt, secondColor),
          ],
        ),
      ),
    ),
  );
}
