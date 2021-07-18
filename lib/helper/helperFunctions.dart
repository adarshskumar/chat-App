import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static String sharedPreferenceUserLoggedInKey = "ISLOGGED";
  static String sharedPreferenceUserNameKey = "USERNAMEKEY";
  static String sharedPrefernecesUserEmailKey = "USEREMAILKEY";

  //saving data to SharedPreferences

static Future<bool> saveUserLoggedInSharedPreference
    (bool isUserLoggedIn) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return await prefs.setBool(sharedPreferenceUserLoggedInKey, isUserLoggedIn);
}

  static Future<bool> saveUserNameSharedPreference
      (String userName) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPreferenceUserNameKey, userName);
  }

  static Future<bool> saveUserEmailSharedPreference
      (String userEmail) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedPrefernecesUserEmailKey, userEmail);
  }

  //getting data from shared preferences

  static Future<bool> getUserLoggedInSharedPreference() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(sharedPreferenceUserLoggedInKey);
  }

  static Future<String> getUserNameSharedPreference() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedPreferenceUserNameKey);
  }

  static Future<String> getUserEmailSharedPreference
      (String userEmail) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString(sharedPrefernecesUserEmailKey);
  }


}