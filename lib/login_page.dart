import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/settings_services.dart';

class LoginPage extends GetView<SettingsServices> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('1'.tr,
        style: const TextStyle(
          fontFamily: 'Popuns'
          ), 
        ),
        backgroundColor: Colors.black,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                controller.sharedPre?.setString('Id', 'Logged in');
                Get.offNamed('/home');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )
              ), 
              child: Text('1'.tr,
              style: const TextStyle(
                fontFamily: 'Popuns',
                fontSize: 22,
                ),
              ),
            )
          ]
          ,),
      )
    );
  }
}