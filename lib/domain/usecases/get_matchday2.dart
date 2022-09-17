import 'package:dartz/dartz.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:futoboru/domain/repositories/matches_repository.dart';

class GetMatchday2 {
  final MatchesRepository repository;

  GetMatchday2(this.repository);

  Future<Either<Failure, List<Matches>>> execute() {
    return repository.getMatchday2();
  }
}