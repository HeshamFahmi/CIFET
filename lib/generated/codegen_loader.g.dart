// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart
import 'dart:ui';

import 'package:easy_localization/src/asset_loader.dart';

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

    static const Map<String,dynamic> en = {
  "AppName": "CIFET",
  "Versions": "El Asdarat",
  "Tables": "El Gadawel",
  "Gallery": "Galley",
  "News": "El Nashra",
  "Lagna3lya": "El Lagna El 3lya",
  "TheatreLocations": "Theatre Locations",
  "Watches": "Lagna El Moshahda",
  "Prizes": "El Mokramoon",
  "LagnaA3lam": "Lagna El A3lam",
  "LagnaTa7keem": "Lagna Eltahkeem",
  "ContactUs": "Contact Us",
  "AboutUs": "About Us",
  "Notifications": "Notifications"
};
  static const Map<String,dynamic> ar = {
  "AppName": "مهرجان القاهرة الدولى للمسرح التجريبي",
  "Versions": "الأصدارات",
  "Tables": "الجداول",
  "Gallery": "معرض الصور",
  "News": "النشرة",
  "Lagna 3lya": "اللجنة العليا",
  "TheatreLocations": "مواقع المسارح",
  "Watches": "لجنة المشاهدة",
  "Prizes": "المكرمون",
  "LagnaA3lam": "لجنة الاعلام",
  "LagnaTa7keem": "لجنة التحكيم",
  "ContactUs": "تواصل معنا",
  "AboutUs": "عن التطبيق",
  "Notifications": "الإشعارات"
};
  static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ar": ar};
}
