import 'package:futoboru/data/datasource/matches_remote_data_source.dart';
import 'package:futoboru/data/datasource/news_remote_data_source.dart';
import 'package:futoboru/data/repositories/matches_repository_impl.dart';
import 'package:futoboru/data/repositories/news_repository_impl.dart';
import 'package:futoboru/domain/repositories/matches_repository.dart';
import 'package:futoboru/domain/repositories/news_repository.dart';
import 'package:futoboru/domain/usecases/get_all_match.dart';
import 'package:futoboru/domain/usecases/get_final.dart';
import 'package:futoboru/domain/usecases/get_matchday1.dart';
import 'package:futoboru/domain/usecases/get_matchday2.dart';
import 'package:futoboru/domain/usecases/get_matchday3.dart';
import 'package:futoboru/domain/usecases/get_news.dart';
import 'package:futoboru/domain/usecases/get_quarter_finals.dart';
import 'package:futoboru/domain/usecases/get_round_of_16.dart';
import 'package:futoboru/domain/usecases/get_semi_finals.dart';
import 'package:futoboru/domain/usecases/get_third_place.dart';
import 'package:futoboru/presentation/provider/all_matches_notifier.dart';
import 'package:futoboru/presentation/provider/finals_notifier.dart';
import 'package:futoboru/presentation/provider/matchday1_notifier.dart';
import 'package:futoboru/presentation/provider/matchday2_notifier.dart';
import 'package:futoboru/presentation/provider/matchday3_notifier.dart';
import 'package:futoboru/presentation/provider/news_list_notifier.dart';
import 'package:futoboru/presentation/provider/quarter_finals_notifier.dart';
import 'package:futoboru/presentation/provider/roundof16_notifier.dart';
import 'package:futoboru/presentation/provider/semi_finals_notifier.dart';
import 'package:futoboru/presentation/provider/third_place_notifier.dart';
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
  locator.registerFactory(
    () => AllMatchesNotifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => Matchday1Notifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => Matchday2Notifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => Matchday3Notifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => Roundof16Notifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => QuarterFinalsNotifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => SemiFinalsNotifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => ThirdPlaceNotifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => FinalNotifier(
      locator(),
    ),
  );

  // use case
  locator.registerLazySingleton(() => GetNews(locator()));
  locator.registerLazySingleton(() => GetAllMatches(locator()));
  locator.registerLazySingleton(() => GetMatchday1(locator()));
  locator.registerLazySingleton(() => GetMatchday2(locator()));
  locator.registerLazySingleton(() => GetMatchday3(locator()));
  locator.registerLazySingleton(() => GetRoundOf16(locator()));
  locator.registerLazySingleton(() => GetQuarterFinals(locator()));
  locator.registerLazySingleton(() => GetSemiFinals(locator()));
  locator.registerLazySingleton(() => GetThirdPlace(locator()));
  locator.registerLazySingleton(() => GetFinal(locator()));

  // repository
  locator.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );
  locator.registerLazySingleton<MatchesRepository>(
    () => MatchesRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  // data source
  locator.registerLazySingleton<NewsRemoteDataSource>(
      () => NewsRemoteDataSourceImpl(client: locator()));
  locator.registerLazySingleton<MatchesRemoteDataSource>(
      () => MatchesRemoteDataSourceImpl(client: locator()));

  // external
  locator.registerLazySingleton(() => http.Client());
}
