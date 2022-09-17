import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/presentation/pages/detail_match_page.dart';
import 'package:futoboru/presentation/pages/detail_page.dart';
import 'package:futoboru/presentation/pages/main_page.dart';
import 'package:futoboru/presentation/pages/splash_page.dart';
import 'package:futoboru/injection.dart' as di;
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
import 'package:provider/provider.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.locator<NewsListNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<AllMatchesNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<Matchday1Notifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<Matchday2Notifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<Matchday3Notifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<Roundof16Notifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<QuarterFinalsNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<SemiFinalsNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<ThirdPlaceNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<FinalNotifier>(),
        ),
      ],
      child: MaterialApp(
        title: 'Futoboru',
        theme: ThemeData.light().copyWith(
          colorScheme: kColorScheme,
          primaryColor: backgroundColorWhite,
          scaffoldBackgroundColor: backgroundColorWhite,
          textTheme: kTextTheme,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => const MainPage(),
          '/detail': (context) => const DetailPage(),
          '/detail-match': (context) => const DetailMatchPage(),
        },
      ),
    );
  }
}
