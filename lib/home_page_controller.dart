
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/settings_services.dart';

class HomePageController extends GetxController {
  int counter = 0;
  void numberOfCrewsPlus (){
    counter++;
    update();
  }
}


class LangPageController extends GetxController {

  late SettingsServices cont = Get.find();

  Locale setInitLang(){
    return cont.sharedPre?.getString('Lang') == 'ar' ? 
    const Locale('ar') : const Locale('en'); 
  }

  void changeLang(String codelang){
    Locale locale = Locale(codelang);
    cont.sharedPre?.setString('Lang', codelang);
    Get.updateLocale(locale);
  }
}

