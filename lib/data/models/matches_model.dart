import 'package:equatable/equatable.dart';
import 'package:futoboru/data/models/score_model.dart';
import 'package:futoboru/data/models/team_model.dart';
import 'package:futoboru/domain/entities/matches.dart';

class MatchesModel extends Equatable {
  MatchesModel({
    required this.id,
    required this.utcDate,
    required this.status,
    required this.matchday,
    required this.stage,
    required this.group,
    required this.lastUpdated,
    required this.homeTeam,
    required this.awayTeam,
    required this.score,
  });
 
  final int id;
  final DateTime? utcDate;
  final String? status;
  final dynamic matchday;
  final String? stage;
  final String? group;
  final DateTime? lastUpdated;
  final TeamModel homeTeam;
  final TeamModel awayTeam;
  final ScoreModel score;

  factory MatchesModel.fromJson(Map<String, dynamic> json) => MatchesModel(
        id: json['id'],
        utcDate: DateTime.parse(json['utcDate']),
        status: json['status'],
        matchday: json['matchday'],
        stage: json['stage'],
        group: json['group'],
        lastUpdated: DateTime.parse(json['lastUpdated']),
        homeTeam: TeamModel.fromJson(json['homeTeam']),
        awayTeam: TeamModel.fromJson(json['awayTeam']),
        score: ScoreModel.fromJson(json['score']),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "utcDate": utcDate,
        "status": status,
        "matchday": matchday,
        "stage": stage,
        "group": group,
        "lastUpdated": lastUpdated,
        "homeTeam": homeTeam.toJson(),
        "awayTeam": awayTeam.toJson(),
        "score": score.toJson(),
      };

  Matches toEntity() {
    return Matches(
      id: id,
      utcDate: utcDate,
      status: status,
      matchday: matchday,
      stage: stage,
      group: group,
      lastUpdated: lastUpdated,
      homeTeam: homeTeam,
      awayTeam: awayTeam,
      score: score,
    );
  }

  @override
  List<Object?> get props => [
        id,
        utcDate,
        status,
        matchday,
        stage,
        group,
        lastUpdated,
        homeTeam,
        awayTeam,
        score,
      ];
}
