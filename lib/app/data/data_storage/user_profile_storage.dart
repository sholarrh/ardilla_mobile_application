
import 'package:shared_preferences/shared_preferences.dart';

const _lastName = 'lastName';
const _firstName = 'firstName';
const _userName  = 'userName';

class UserProfileStorage {
  static late final SharedPreferences _pref;

  static Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static Future<void> storeLastName(String lastName) async {
    await _pref.setString(_lastName, lastName);
  }
  static Future<void> storeFirstName(String firstName) async {
    await _pref.setString(_firstName, firstName);
  }
  static Future<void> storeUserName(String userName) async {
    await _pref.setString(_userName, userName);
  }

  static String retrieveFirstName() {
    return _pref.getString(_firstName) ?? 'Anita';
  }
  static String retrieveLastName() {
    return _pref.getString(_lastName) ?? 'Ojieh';
  }
  static String retrieveUserName() {
    return _pref.getString(_userName) ?? 'Cadet <Annie/>';
  }

  static clearName() {
    _pref.clear();
  }
}