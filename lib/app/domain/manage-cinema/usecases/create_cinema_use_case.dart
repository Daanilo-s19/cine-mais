import 'package:dartz/dartz.dart';
import 'package:getx_pattern/app/domain/cinema/entities/cinema_entity.dart';
import 'package:getx_pattern/app/domain/manage-cinema/errors/error.dart';
import 'package:getx_pattern/app/domain/manage-cinema/repositories/manage_cinema_repository.dart';

abstract class CreateCinemaUseCase {
  Future<Either<FailureManage, bool>> call(CinemaEntity cinema);
}

class CreateCinemaUseCaseImpl implements CreateCinemaUseCase {
  final ManageCinemaRepository repository;

  CreateCinemaUseCaseImpl(this.repository);

  @override
  Future<Either<FailureManage, bool>> call(CinemaEntity cinema) async {
    return repository.createCinema(cinema);
  }
}
