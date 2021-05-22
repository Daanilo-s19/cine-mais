import 'package:dartz/dartz.dart';
import 'package:getx_pattern/app/domain/cinema/entities/cinema_entity.dart';
import 'package:getx_pattern/app/domain/manage-cinema/errors/error.dart';

//TODO: strategy
abstract class ManageCinemaRepository {
  Future<Either<FailureManage, List<CinemaEntity>>> fetchCinemas();
  Future<Either<FailureManage, bool>> updateCinema(int id);
  Future<Either<FailureManage, bool>> deleteCinema(int id);
  Future<Either<FailureManage, bool>> createCinema(CinemaEntity cinema);
}
