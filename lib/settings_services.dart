import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingsServices extends GetxService {

    SharedPreferences? sharedPre;
    RxInt counter = 0.obs;
    
    Future<SettingsServices> init() async {

      sharedPre = await SharedPreferences.getInstance();
      counter.value = sharedPre?.getInt('counter') ?? 0;
      return this;
    }

    increase(){
      counter.value++;
      sharedPre?.setInt('counter', counter.value);
    }
}