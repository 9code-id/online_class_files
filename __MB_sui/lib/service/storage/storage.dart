import 'package:shared_preferences/shared_preferences.dart';

class LocalDataService {
  static late SharedPreferences prefs;
  load() async {
    prefs = await SharedPreferences.getInstance();
  }

  bool isFirstTime() {
    return prefs.getBool("first_time") ?? false;
  }

  saveFirstTimeLogin() {
    prefs.setBool("first_time", true);
  }
}
