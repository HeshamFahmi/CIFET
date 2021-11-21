import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import 'constant.dart';

class NewsPeople extends StatefulWidget {
  @override
  _NewsPeopleState createState() => _NewsPeopleState();
}

var newsPeopleImages = [
  "https://i.alarab.co.uk/styles/article_image_800x450_scale/s3/2020-09/thatre.jpg?wBKdRY9Wtg2wpRW4awWkOkaHOIXgA7tx&itok=--KhEDfa",
  "https://almalnews.com/wp-content/uploads/2020/11/%D9%85%D9%87%D8%B1%D8%AC%D8%A7%D9%86-%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9-%D8%A7%D9%84%D8%B3%D9%8A%D9%86%D9%85%D8%A7%D8%A6%D9%8A.jpg",
  "https://cdn.elwatannews.com/watan/840x473/7887000421537554025.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROjVUQAxs_cTi2HJom7cBZHrjt8hCMkE0Ecw&usqp=CAU",
  "https://mediaaws.almasryalyoum.com/news/verylarge/2019/11/30/995160_0.jpg",
  "https://i.ytimg.com/vi/RMR6Z7P_UnQ/maxresdefault.jpg"
];

class _NewsPeopleState extends State<NewsPeople> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("لجنـة التحكــيم", context, false),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
              child: PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(newsPeopleImages[index]),
                initialScale: PhotoViewComputedScale.contained,
                heroAttributes:
                    PhotoViewHeroAttributes(tag: newsPeopleImages[index]),
              );
            },
            itemCount: newsPeopleImages.length,
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
