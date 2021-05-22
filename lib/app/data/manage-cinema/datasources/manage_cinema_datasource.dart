import 'package:getx_pattern/app/domain/manage-cinema/entities/cinema_entity.dart';

abstract class ManageCinemaDataSource {
  Future<List<CinemaEntity>> fetchCinemas();
  Future<bool> updateCinema(int id);
  Future<bool> deleteCinema(int id);
  Future<bool> createCinema(CinemaEntity cinema);
}
