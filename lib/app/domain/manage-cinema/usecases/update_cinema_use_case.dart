import 'package:dartz/dartz.dart';
import 'package:getx_pattern/app/domain/manage-cinema/errors/error.dart';
import 'package:getx_pattern/app/domain/manage-cinema/repositories/manage_cinema_repository.dart';

abstract class UpdateCinemaUseCase {
  Future<Either<FailureManage, bool>> call(int id);
}

class UpdateCinemaUseCaseImpl implements UpdateCinemaUseCase {
  final ManageCinemaRepository repository;

  UpdateCinemaUseCaseImpl(this.repository);

  @override
  Future<Either<FailureManage, bool>> call(int id) async {
    return repository.updateCinema(id);
  }
}
