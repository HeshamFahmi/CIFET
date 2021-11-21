import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'constant.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

final DateTime now = DateTime.now();
final DateFormat formatter = DateFormat('yyyy-MM-dd');
final String formatted = formatter.format(now);

var notifyBodies = [
  "أنهت لجنتا مشاهدة واختيار العروض المشاركة في مهرجان القاهرة الدولي للمسرح التجريبي في دورته (28 ) أعمالها، بعد أن شاهدت 285 عرضا مختلفاً ، مقسمة إلى 167 عرضاً دولياً أجنبياً وعربياً، و118 عرضاً مصرياً.",
  "أعلنت إدارة مهرجان القاهرة الدولي للمسرح التجريبي في دورته الـ 28، برئاسة د. جمال ياقوت، عن تمديد فترة استقبال ملخصات الأبحاث المشاركة في المحاور الفكرية للمهرجان حتى يوم 14 أكتوبر المقبل",
  "التقي الدكتور جمال ياقوت رئيس مهرجان القاهرة الدولي للمسرح التجريبي بسفير دولة تونس بالقاهرة السيد محمد بن يوسف، ضمن خطة تستهدف توسيع قاعدة المشاركات",
  "بهدف الوصول إلى أشكال مسرحية مبتكرة تتناسب و الهوية الثقافية، يطلق مهرجان القاهرة الدولي للمسرح التجريبي برئاسة الدكتور جمال ياقوت نادي المسرح التجريبي",
  "ينظم مهرجان القاهرة الدولي للمسرح التجريبي ضمن فعاليات دورته الـ 28 معرضا دوليا للتصميمات المسرحية غير التقليدية ديكور – أزياء – إضاءة – سينوغرافيا",
  "يعلن مهرجان القاهرة الدولي للمسرح التجريبي بدورته الـ (28) ، برئاسة الدكتور جمال ياقوت عن فتح باب المشاركة البحثية في المحاور الفكرية للمهرجان تحت عنوان (التجريب بين الإنتاج والتلقي)"
];

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundDecoration(),
      child: Scaffold(
        appBar: customAppBar("الأشعــارات", context, false),
        backgroundColor: Colors.transparent,
        body: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            padding: const EdgeInsets.all(8),
            itemCount: notifyBodies.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellowAccent,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        customTxt(notifyBodies[index], secondColor),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          child: customTxt(formatted, Colors.grey),
                          alignment: Alignment.bottomLeft,
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
