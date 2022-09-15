import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/presentation/pages/detail_match_page.dart';
import 'package:futoboru/presentation/pages/detail_page.dart';
import 'package:futoboru/presentation/pages/main_page.dart';
import 'package:futoboru/presentation/pages/splash_page.dart';
import 'package:futoboru/injection.dart' as di;
import 'package:futoboru/presentation/provider/news_list_notifier.dart';
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
        )
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
