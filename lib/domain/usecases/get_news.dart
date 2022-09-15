import 'package:dartz/dartz.dart';
import 'package:futoboru/common/failure.dart';
import 'package:futoboru/domain/entities/news.dart';
import 'package:futoboru/domain/repositories/news_repository.dart';

class GetNews {
  final NewsRepository repository;

  GetNews(this.repository);

  Future<Either<Failure, List<News>>> execute() {
    return repository.getNews();
  }
}