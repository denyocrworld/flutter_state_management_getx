import 'package:shared_preferences/shared_preferences.dart';

class FormHistoryService {
  Future<SharedPreferences> instance() async {
    return await SharedPreferences.getInstance();
  }

  Future clear() async {
    var db = await instance();
    await db.clear();
  }

  Future read(String key) async {
    var db = await instance();
    return db.get(key);
  }

  Future write(String key, dynamic value) async {
    var db = await instance();
    if (value is bool) return await db.setBool(key, value);
    if (value is String) return await db.setString(key, value);
    if (value is double) return await db.setDouble(key, value);
    if (value is int) return await db.setInt(key, value);
    if (value is List<String>) return await db.setStringList(key, value);
  }

  Future remove(String key) async {
    var db = await instance();
    await db.remove(key);
  }
}
