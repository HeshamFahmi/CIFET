import 'package:CIFET/constant.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("عن التطبيــق", context, false),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                customTxt(
                    "تطبيق خاص بالمهرجان القومى للمسرح المصـرى", Colors.white),
                SizedBox(
                  height: 40,
                ),
                customTxt(
                    "يحتوى على فعاليات الدوره الرابعه عشره فى الفتره من 27 سبتمبر الى 9 اكتوبر 2021",
                    Colors.white),
                SizedBox(
                  height: 40,
                ),
                customTxt(
                    "يشمل التطبيق على اخبار المهرجان والاصدارات والنشرات وجدول العروض والندوات والورش وصفحه الفيسبوك وحساب الانستجرام وقناة اليوتيوب الخاصه بالمهرجان كما يحتوى على اشعارات تصل للمستخدم على هاتفه لتنبيهه باحداث الاخبار والفعاليات للدوره الرابعه عشرة",
                    Colors.white),
                SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellowAccent,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: customTxt(
                        "للتواصل او متابعه مصمم البرنامج الفنان :- محمد فاضل القبانى",
                        secondColor),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellowAccent,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: customTxt(
                        "لمتابعه او التواصل مع مؤسسه اتجاهات للاعلان",
                        secondColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
