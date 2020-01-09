import 'package:shared_preferences/shared_preferences.dart';

abstract class PrefMethods{
  Future<void> setUsername(String username);
  Future<void> setId(int id);
  Future<String> getUsername();
  Future<int> getId();
  
}

class PrefUtil implements PrefMethods{

  Future<void> setUsername(String username) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('username', username);
  }

  Future<void> setId(int id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('id', id);
  }

  Future<String> getUsername() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('username');
  }
  
  Future<int> getId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt('id');
  }

}