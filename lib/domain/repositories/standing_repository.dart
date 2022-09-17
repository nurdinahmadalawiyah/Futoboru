import 'package:dartz/dartz.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/domain/entities/standings.dart';

abstract class StandingsRepository {
  Future<Either<Failure, List<Standings>>> getStandings();
}