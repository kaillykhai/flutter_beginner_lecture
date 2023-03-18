import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceManager {
  Future<void> saveEmail({required String key, required dynamic value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value).catchError((error) {
      print(error.message);
    });
  }

  Future<void> savePassword(
      {required String key, required dynamic value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value).catchError((error) {
      print(error.message);
    });
  }

  Future<String?> readEmail({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString(key);
    return result;
  }

  Future<String?> readPassword({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString(key);
    return result;
  }

  Future<void> removeObject({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<bool> existData({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

  Future<bool> clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }

  Future<void> savePhoneNumber(
      {required String key, required String value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value).catchError((error) {
      print(error.message);
    });
  }

  Future<void> saveGender({required String key, required String value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value).catchError((error) {
      print(error.message);
    });
  }

  Future<void> saveRegisterStatus(
      {required String key, required bool value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value).catchError((error) {
      print(error.message);
    });
  }

  Future<String?> readPhoneNumber({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString(key);
    return result;
  }

  Future<String?> readGender({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString(key);
    return result;
  }

  Future<bool?> readRegisterStatus({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? result = prefs.getBool(key);
    return result;
  }
}
