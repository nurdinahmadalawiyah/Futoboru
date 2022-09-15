import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:futoboru/common/exception.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/data/datasource/news_remote_data_source.dart';
import 'package:futoboru/domain/entities/news.dart';
import 'package:futoboru/domain/repositories/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;

  NewsRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<News>>> getNews() async {
    try {
      final result = await remoteDataSource.getNews();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
