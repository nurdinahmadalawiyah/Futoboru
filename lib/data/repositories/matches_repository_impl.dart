import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:futoboru/common/exception.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/data/datasource/matches_remote_data_source.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:futoboru/domain/repositories/matches_repository.dart';

class MatchesRepositoryImpl implements MatchesRepository {
  final MatchesRemoteDataSource remoteDataSource;

  MatchesRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<Matches>>> getAllMatches() async {
    try {
      final result = await remoteDataSource.getAllMatches();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Matches>>> getMatchday1() async {
    try {
      final result = await remoteDataSource.getMatchday1();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Matches>>> getFinal() async {
    try {
      final result = await remoteDataSource.getFinal();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Matches>>> getMatchday2() async {
    try {
      final result = await remoteDataSource.getMatchday2();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Matches>>> getMatchday3() async {
    try {
      final result = await remoteDataSource.getMatchday3();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Matches>>> getQuaterFinals() async {
    try {
      final result = await remoteDataSource.getQuaterFinals();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Matches>>> getRoundof16() async {
    try {
      final result = await remoteDataSource.getRoundof16();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Matches>>> getSemiFinals() async {
    try {
      final result = await remoteDataSource.getSemiFinals();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Matches>>> getThirdPlace() async {
    try {
      final result = await remoteDataSource.getThirdPlace();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
