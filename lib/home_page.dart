// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/settings_services.dart';

class HomePage extends GetView<SettingsServices> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('2'.tr,
        style: const TextStyle(
          fontFamily: 'Popuns'
          ),        
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            GetX<SettingsServices>(
              builder: (cont) {
                return Text('3'.tr + ': ${cont.counter}',
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Popuns',
                  fontSize: 25,
                  ),
                );
              }
            ),
            Container(height: 5),
            ElevatedButton(
              onPressed: (){
                controller.increase();
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
              child: Text('4'.tr)
              ),
            Container(height: 20),
            ElevatedButton(
              onPressed: (){
                controller.sharedPre?.clear();
                Get.offNamed('/');
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                enableFeedback: false,
                minimumSize: const Size(300 , 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ), 
              ),
              child: Text('5'.tr)
              ),
            Container(height: 20),
            ElevatedButton(
              onPressed: (){
                controller.sharedPre?.setString('Id', 'LangPage');
                Get.toNamed('language');
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
              child: Text('6'.tr)
              ), 
              
          ]),
      ),
    );
  }
}