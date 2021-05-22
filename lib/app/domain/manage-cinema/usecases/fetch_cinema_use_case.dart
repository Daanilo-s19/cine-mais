import 'package:dartz/dartz.dart';
import 'package:getx_pattern/app/domain/cinema/entities/cinema_entity.dart';
import 'package:getx_pattern/app/domain/manage-cinema/errors/error.dart';
import 'package:getx_pattern/app/domain/manage-cinema/repositories/manage_cinema_repository.dart';

//TODO: interface
abstract class FetchCinemaUseCase {
  Future<Either<FailureManage, List<CinemaEntity>>> call();
}

class FetchCinemaUseCaseImpl implements FetchCinemaUseCase {
  final ManageCinemaRepository repository;

  FetchCinemaUseCaseImpl(this.repository);

  @override
  Future<Either<FailureManage, List<CinemaEntity>>> call() async {
    return repository.fetchCinemas();
  }
}
