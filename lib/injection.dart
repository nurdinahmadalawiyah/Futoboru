import 'package:futoboru/data/datasource/news_remote_data_source.dart';
import 'package:futoboru/data/repositories/news_repository_impl.dart';
import 'package:futoboru/domain/repositories/news_repository.dart';
import 'package:futoboru/domain/usecases/get_news.dart';
import 'package:futoboru/presentation/provider/news_list_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  // provider
  locator.registerFactory(
    () => NewsListNotifier(
      locator(),
    ),
  );

  // use case
  locator.registerLazySingleton(() => GetNews(locator()));

  // repository
  locator.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  // data source
  locator.registerLazySingleton<NewsRemoteDataSource>(
      () => NewsRemoteDataSourceImpl(client: locator()));

  // external
  locator.registerLazySingleton(() => http.Client());
}
