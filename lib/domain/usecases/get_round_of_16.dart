import 'package:dartz/dartz.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:futoboru/domain/repositories/matches_repository.dart';

class GetRoundOf16 {
  final MatchesRepository repository;

  GetRoundOf16(this.repository);

  Future<Either<Failure, List<Matches>>> execute() {
    return repository.getRoundof16();
  }
}