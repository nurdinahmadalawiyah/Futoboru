import 'package:dartz/dartz.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/domain/entities/news.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<News>>> getNews();
}