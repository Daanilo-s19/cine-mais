import 'package:getx_pattern/app/data/manage-cinema/datasources/manage_cinema_datasource.dart';
import 'package:getx_pattern/app/domain/manage-cinema/entities/cinema_entity.dart';
import 'package:getx_pattern/app/domain/manage-cinema/errors/error.dart';
import 'package:getx_pattern/app/services/cache/box_storage.dart';
import 'package:getx_pattern/app/services/cache/cache_key.dart';

class ManageCinemaProvider implements ManageCinemaDataSource {
  final BoxStorage boxStorage;

  ManageCinemaProvider(this.boxStorage);
  @override
  Future<bool> createCinema(CinemaEntity cinema) async {
    try {
      final cache = await boxStorage.fetchData(key: CacheKey.CINEMAS) as List;
      if (!cache.contains(cinema)) {
        cache.add(cinema);
        await boxStorage.saveData(key: CacheKey.CINEMAS, value: cache);
        return true;
      } else {
        throw FailureManage();
      }
    } catch (error) {
      print("error $error");
      throw FailureManage();
    }
  }

  @override
  Future<bool> deleteCinema(int id) async {
    try {
      final cache = await boxStorage.fetchData(key: CacheKey.CINEMAS)
          as List<CinemaEntity>;
      cache.removeWhere((element) => element.id == id);
      ;
      return true;
    } catch (error) {
      print("error $error");
      throw FailureManage();
    }
  }

  @override
  Future<List<CinemaEntity>> fetchCinemas() async {
    try {
      return boxStorage.fetchData(key: CacheKey.CINEMAS) as List<CinemaEntity>;
    } catch (error) {
      print("error $error");
      throw FailureManage();
    }
  }

  @override
  Future<bool> updateCinema(int id) {
    // TODO: implement updateCinema
    throw UnimplementedError();
  }
}
