import 'package:dartz/dartz.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/domain/entities/standings.dart';
import 'package:futoboru/domain/repositories/standing_repository.dart';

class GetStandings {
  final StandingsRepository repository;

  GetStandings(this.repository);

  Future<Either<Failure, List<Standings>>> execute() {
    return repository.getStandings();
  }
}