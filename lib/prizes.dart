import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import 'constant.dart';

class Prizes extends StatefulWidget {
  @override
  _PrizesState createState() => _PrizesState();
}

var prizesImages = [
  "https://cdn.al-ain.com/images/2020/12/11/173-001726-pictures-international-film-festival_700x400.jpg",
  "https://media.gemini.media/img/large/2020/12/10/2020_12_10_20_4_25_279.jpg",
  "https://lh3.googleusercontent.com/proxy/NySN-WD-cmeezhkK4W0JM0hx4konRGvJRe7AuBcv2uX6i8afb22z3ieVnwiRIXtV3JLp02tt1_F-fE2CC9r_gYN39GqwaKGB-1lQeBdqXP_AWtsIL5WN3dhqEFWz4PN2LaBvTWQw4j2FUaudTzoK",
  "https://media.filfan.com/NewsPics/FilfanNew/large/EzaemS_3.jpg",
  "https://cdn.al-ain.com/lg/images/2017/11/22/80-003655-cairo-film-festival-begins-2.jpeg",
  "https://mediaaws.almasryalyoum.com/news/large/2017/11/21/746974_0.JPG"
];

class _PrizesState extends State<Prizes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("المكــرمـون", context, false),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
              child: PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(prizesImages[index]),
                initialScale: PhotoViewComputedScale.contained,
                heroAttributes:
                    PhotoViewHeroAttributes(tag: prizesImages[index]),
              );
            },
            itemCount: prizesImages.length,
            loadingBuilder: (context, event) => Center(
              child: Container(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(
                  value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded / event.expectedTotalBytes,
                ),
              ),
            ),
            backgroundDecoration: backGroundDecoration(),
          )),
        ),
      ),
    );
  }
}
