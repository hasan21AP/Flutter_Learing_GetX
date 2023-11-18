import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/auth_middle_ware.dart';
import 'package:get_app/home_page.dart';
import 'package:get_app/home_page_controller.dart';
import 'package:get_app/language_page.dart';
import 'package:get_app/locale.dart';
import 'package:get_app/settings_services.dart';
import 'login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const LearingGetX());
}

Future initialServices() async {
    await Get.putAsync(() => SettingsServices().init());
}

class LearingGetX extends StatelessWidget {
  const LearingGetX({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LangPageController());
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:() => const LoginPage(), 
        transition: Transition.rightToLeft , 
        transitionDuration: const Duration(milliseconds: 500), 
        middlewares: [AuthMiddleWare()]),
        GetPage(name: '/home', page: () => const HomePage(), 
        transition: Transition.rightToLeft ,
        transitionDuration: const Duration(milliseconds: 500)
        ),
        GetPage(name: '/language', page: () => const LanguagesPage(), 
        transition: Transition.rightToLeft ,
        transitionDuration: const Duration(milliseconds: 500)
        ), 
      ],
      locale: LangPageController().setInitLang(),
      translations: MyLocale(),
    );
  }
}



