// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/home_page_controller.dart';
import 'package:get_app/settings_services.dart';

class LanguagesPage extends GetView<SettingsServices> {
  const LanguagesPage({super.key});
  @override
  Widget build(BuildContext context) {
    LangPageController langController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('6'.tr,
        style: const TextStyle(
          fontFamily: 'Popuns'
          ),        
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                langController.changeLang("ar");
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                enableFeedback: false,
                minimumSize: const Size(150 , 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ), 
              ),
              child: Text('7'.tr)
              ),
            Container(height: 20),
            ElevatedButton(
              onPressed: (){
                langController.changeLang("en");
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                enableFeedback: false,
                minimumSize: const Size(150 , 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ), 
              ),
              child: Text('8'.tr)
              )
          ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.sharedPre?.setString('Id', 'Logged in');
          Get.toNamed('/home');
        },
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
        ),
    );
  }
}