import 'package:shared_preferences/shared_preferences.dart';

class UserInfo {
  Future<void> setToken(String value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString("token", value);
  }

  Future<String?> getToken() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString("token");
  }

  Future<void> setUserID(int value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setInt("userID", value);
  }

  Future<int?> getUserID() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getInt("userID");
  }

  Future<void> logout() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}
