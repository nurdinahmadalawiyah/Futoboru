import 'package:flutter/cupertino.dart';
import 'package:futoboru/common/state_enum.dart';
import 'package:futoboru/domain/entities/news.dart';
import 'package:futoboru/domain/usecases/get_news.dart';

class NewsListNotifier extends ChangeNotifier {
  final GetNews getNews;

  NewsListNotifier(this.getNews);

  RequestState _state = RequestState.empty;
  RequestState get state => _state;

  List<News> _news = [];
  List<News> get news => _news;

  String _message = '';
  String get message => _message;

  Future<void> fetchTopHeadlinesNews() async {
    _state = RequestState.loading;
    notifyListeners();

    final result = await getNews.execute();

    result.fold(
      (failure) {
        _message = failure.message;
        _state = RequestState.error;
        notifyListeners();
      },
      (newsData) {
        _news = newsData;
        _state = RequestState.loaded;
        notifyListeners();
      },
    );
  }
}