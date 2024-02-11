import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;
  static SharedPreferences? policysharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    policysharedPreferences = await SharedPreferences.getInstance();
  }

  static dynamic getData({
    @required String? key,
  }) {
    return sharedPreferences!.get(key!);
  }

  static dynamic getPolicyData({
    @required String? key,
  }) {
    return policysharedPreferences!.get(key!);
  }

  static Future<bool> savePolicyData({
    required String key,
    @required dynamic value,
  }) async {
    // if (value is bool)
    //   return await policysharedPreferences!.setBool(key, value);
    return await policysharedPreferences!.setBool(key, value);
  }

  static Future<bool> saveData({
    required String key,
    @required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences!.setString(key, value);
    if (value is int) return await sharedPreferences!.setInt(key, value);
    if (value is bool) return await sharedPreferences!.setBool(key, value);
    return await sharedPreferences!.setDouble(key, value);
  }

  static List<String> selectedCondId=[];
  static List<String> similarDetailsCondition=[];
  static List<String> surahCondition=[];
  static List<String> allSurahDetails=[];
  static List<String> surahName = [];


   static saveList() async {
     return await sharedPreferences!.setStringList('selectedCondId', selectedCondId);

  }

  static saveSurahCondition() async {
    return await sharedPreferences!.setStringList('save_surah_condition', surahCondition);

  }

  static saveSurahName() async {
    return await sharedPreferences!.setStringList('save_surah_name', surahName);

  }



  static saveSimilarDetails() async {
    return await sharedPreferences!.setStringList('save_similar_details', similarDetailsCondition);

  }

  static saveAllSurahDetails() async {
    return await sharedPreferences!.setStringList('all_surah_details', allSurahDetails);

  }


  static dynamic getDataList({
    @required String? key,
  }) {
    return sharedPreferences!.get(key!);
  }


  static Future<bool> removeData({
    required String key,
  }) async {
    return await sharedPreferences!.remove(key);
  }

  static Future<bool> clearAllData() async {
    return await sharedPreferences!.clear();
  }
}
