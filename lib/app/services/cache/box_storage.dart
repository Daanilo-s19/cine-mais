import 'package:flutter/material.dart';
import 'package:getx_pattern/app/services/cache/cache_key.dart';
import 'package:meta/meta.dart';
import 'package:get_storage/get_storage.dart';

class BoxStorage {
  final box = GetStorage(CacheKey.BOXCACHE);

  Future<void> saveData({@required String key, @required dynamic value}) async {
    await box.write(key, value);
  }

  Future<Map<String, dynamic>> fetchData({@required String key}) async {
    return await box.read(key);
  }

  Future<String> fetchStringData({@required String key}) async {
    return await box.read(key);
  }

  Future<List<dynamic>> fetchDynamicData({@required String key}) async {
    return await box.read(key);
  }

  Future<void> deleteKey({@required String key}) async {
    await box.remove(key);
  }

  Future<void> clean() async {
    await box.erase();
  }

  Future<void> start() async {
    await GetStorage.init(CacheKey.BOXCACHE);
  }
}
