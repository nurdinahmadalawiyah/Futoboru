// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:futoboru/common/exception.dart';
import 'package:futoboru/data/models/news_model.dart';
import 'package:futoboru/data/models/news_response.dart';
import 'package:http/http.dart' as http;

abstract class NewsRemoteDataSource {
  Future<List<NewsModel>> getNews();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  static const API_KEY = 'apiKey=8be179219c6748ec8711c01792b76114';
  static const COUNTRY = 'country=id';
  static const CATEGORY = 'category=sports';
  static const BASE_URL = 'https://newsapi.org/v2';

  final http.Client client;

  NewsRemoteDataSourceImpl({required this.client});
  @override
  Future<List<NewsModel>> getNews() async {
    final response = await client.get(Uri.parse('$BASE_URL/top-headlines?$COUNTRY&$CATEGORY&$API_KEY'));

    if (response.statusCode == 200) {
      return NewsResponse.fromJson(json.decode(response.body)).newsList;
    } else {
      throw ServerException();
    }
  }
}