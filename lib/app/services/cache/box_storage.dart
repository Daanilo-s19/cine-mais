import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:get_storage/get_storage.dart';

import 'cache_key.dart';

class BoxStorage<T> {
  final box = GetStorage(CacheKey.BOXCACHE);

  Future<void> saveData({@required String key, @required T value}) async {
    await box.write(key, value);
  }

  Future<T> fetchData({@required String key}) async {
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
