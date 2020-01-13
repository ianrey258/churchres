import 'package:shared_preferences/shared_preferences.dart';

abstract class PrefMethods{
  setFirstName(String firstname);
  Future<void> setLastName(String lastname);
  Future<void> setChurch(String church);
  Future<void> setEmail(String email);
  Future<void> setId(String id);
  Future<String> getId();
  getFirstName();
  Future<String> getLastName();
  Future<String> getChurch();
  Future<String> getEmail();
  
}

class PrefUtil implements PrefMethods{

  Future<void> setFirstName(String firstname) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('firstname', firstname);
  }

  Future<void> setLastName(String lastname) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('lastname', lastname);
  }

  Future<void> setChurch(String church) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('church', church);
  }

  Future<void> setEmail(String email) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('email', email);
  }

  Future<void> setId(String id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('id', id);
  }
  
  Future<String> getId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('id');
  }
  Future<String> getFirstName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('firstname');
  }

  Future<String> getLastName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('lastname');
  }

  Future<String> getChurch() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('church');
  }

  Future<String> getEmail() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('email');
  }

  Future<void> resetPref() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('id');
    pref.clear();
  }

}