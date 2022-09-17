import 'package:dartz/dartz.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:futoboru/domain/repositories/matches_repository.dart';

class GetSemiFinals {
  final MatchesRepository repository;

  GetSemiFinals(this.repository);

  Future<Either<Failure, List<Matches>>> execute() {
    return repository.getSemiFinals();
  }
}