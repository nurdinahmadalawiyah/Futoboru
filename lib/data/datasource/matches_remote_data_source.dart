// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:futoboru/common/exception.dart';
import 'package:futoboru/data/models/matches_model.dart';
import 'package:futoboru/data/models/matches_response.dart';
import 'package:http/http.dart' as http;

abstract class MatchesRemoteDataSource {
  Future<List<MatchesModel>> getAllMatches();
  Future<List<MatchesModel>> getMatchday1();
  Future<List<MatchesModel>> getMatchday2();
  Future<List<MatchesModel>> getMatchday3();
  Future<List<MatchesModel>> getRoundof16();
  Future<List<MatchesModel>> getQuaterFinals();
  Future<List<MatchesModel>> getSemiFinals();
  Future<List<MatchesModel>> getThirdPlace();
  Future<List<MatchesModel>> getFinal();
}

class MatchesRemoteDataSourceImpl implements MatchesRemoteDataSource {
  static const X_AUTH_TOKEN = '4e3d712a274543e9bb36cb52a1583a6c';
  static const BASE_URL = 'https://api.football-data.org/v4';

  final http.Client client;

  MatchesRemoteDataSourceImpl({required this.client});

  @override
  Future<List<MatchesModel>> getAllMatches() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<MatchesModel>> getMatchday1() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches?matchday=1'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<MatchesModel>> getFinal() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches?stage=FINAL'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<MatchesModel>> getMatchday2() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches?matchday=2'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<MatchesModel>> getMatchday3() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches?matchday=3'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<MatchesModel>> getQuaterFinals() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches?stage=QUARTER_FINALS'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<MatchesModel>> getRoundof16() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches?stage=LAST_16'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<MatchesModel>> getSemiFinals() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches?stage=SEMI_FINALS'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<MatchesModel>> getThirdPlace() async {
    final response = await client.get(
      Uri.parse('$BASE_URL/competitions/WC/matches?stage=THIRD_PLACE'),
      headers: {
        'X-Auth-Token': X_AUTH_TOKEN,
        'Content-Type': 'application/json; charset=UTF-8'
      },
    );

    if (response.statusCode == 200) {
      return MatchesResponse.fromJson(json.decode(response.body)).matchesList;
    } else {
      throw ServerException();
    }
  }
}
