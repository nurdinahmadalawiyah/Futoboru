import 'package:equatable/equatable.dart';
import 'package:futoboru/data/models/news_model.dart';

class NewsResponse extends Equatable {
  final List<NewsModel> newsList;

  const NewsResponse({required this.newsList});

  factory NewsResponse.fromJson(Map<String, dynamic> json) => NewsResponse(
    newsList: List<NewsModel>.from((json["articles"] as List)
    .map((x) => NewsModel.fromJson(x))
    .where((element) => element.urlToImage != null)),
  );

  Map<String, dynamic> toJson() => {
    "articles": List<dynamic>.from(newsList.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [newsList];
}