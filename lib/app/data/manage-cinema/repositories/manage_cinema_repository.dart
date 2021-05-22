import 'package:dartz/dartz.dart';
import 'package:getx_pattern/app/data/manage-cinema/datasources/manage_cinema_datasource.dart';
import 'package:getx_pattern/app/domain/manage-cinema/errors/error.dart';
import 'package:getx_pattern/app/domain/manage-cinema/entities/cinema_entity.dart';
import 'package:getx_pattern/app/domain/manage-cinema/repositories/manage_cinema_repository.dart';

class ManageCinemaRepositoryImpl implements ManageCinemaRepository {
  final ManageCinemaDataSource dataSource;

  ManageCinemaRepositoryImpl(this.dataSource);

  @override
  Future<Either<FailureManage, bool>> createCinema(CinemaEntity cinema) async {
    try {
      final result = await dataSource.createCinema(cinema);
      return Right(result);
    } on FailureManage catch (e) {
      return Left(FailureManage(message: e.message));
    }
  }

  @override
  Future<Either<FailureManage, bool>> deleteCinema(int id) async {
    try {
      final result = await dataSource.deleteCinema(id);
      return Right(result);
    } on FailureManage catch (e) {
      return Left(FailureManage(message: e.message));
    }
  }

  @override
  Future<Either<FailureManage, List<CinemaEntity>>> fetchCinemas() async {
    try {
      final result = await dataSource.fetchCinemas();
      return Right(result);
    } on FailureManage catch (e) {
      return Left(FailureManage(message: e.message));
    }
  }

  @override
  Future<Either<FailureManage, bool>> updateCinema(int id) async {
    try {
      final result = await dataSource.updateCinema(id);
      return Right(result);
    } on FailureManage catch (e) {
      return Left(FailureManage(message: e.message));
    }
  }
}
