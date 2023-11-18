import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/settings_services.dart';

class AuthMiddleWare extends GetMiddleware {

  late SettingsServices cont = Get.find();

  @override
  RouteSettings? redirect(String? route){
    if (cont.sharedPre?.getString('Id') == 'Logged in') {
      return const RouteSettings(name: '/home');
    }
    if (cont.sharedPre?.getString('Id') == 'LangPage'){
      return const RouteSettings(name: '/language');
    }
    return null;
  }
}