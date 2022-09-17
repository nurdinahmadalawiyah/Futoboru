import 'package:dartz/dartz.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/domain/entities/matches.dart';

abstract class MatchesRepository {
  Future<Either<Failure, List<Matches>>> getAllMatches();
  Future<Either<Failure, List<Matches>>> getMatchday1();
  Future<Either<Failure, List<Matches>>> getMatchday2();
  Future<Either<Failure, List<Matches>>> getMatchday3();
  Future<Either<Failure, List<Matches>>> getRoundof16();
  Future<Either<Failure, List<Matches>>> getQuaterFinals();
  Future<Either<Failure, List<Matches>>> getSemiFinals();
  Future<Either<Failure, List<Matches>>> getThirdPlace();
  Future<Either<Failure, List<Matches>>> getFinal();
}
