import 'package:get/get.dart';

class MyLocale implements Translations {
  
  @override
  Map<String, Map<String, String>> get keys => {
      "ar" : {
        "1" : "تسجيل الدخول",
        "2" : "الصفحة الرئيسية",
        "3" : "المستخدمون",
        "4" : "زد",
        "5" : "تسجيل الخروج" ,
        "6" : "اللغات" ,
        "7" : "العربية" , 
        "8" : "الإنجليزية"
      },

      "en" : {
        "1" : "Login" , 
        "2" : "Home" ,
        "3" : "Users" ,
        "4" : "Increase" ,
        "5" : "Logout" , 
        "6" : "Languages" ,
        "7" : "Arabic" , 
        "8" : "English"
      }
  };  
}