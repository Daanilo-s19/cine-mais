import 'package:dartz/dartz.dart';
import 'package:getx_pattern/app/domain/manage-cinema/errors/error.dart';
import 'package:getx_pattern/app/domain/manage-cinema/repositories/manage_cinema_repository.dart';

abstract class DeleteCinemaUseCase {
  Future<Either<FailureManage, bool>> call(int id);
}

class DeleteCinemaUseCaseImpl implements DeleteCinemaUseCase {
  final ManageCinemaRepository repository;

  DeleteCinemaUseCaseImpl(this.repository);

  @override
  Future<Either<FailureManage, bool>> call(int id) async {
    return repository.deleteCinema(id);
  }
}
