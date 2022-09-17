import 'package:equatable/equatable.dart';
import 'package:futoboru/data/models/score_model.dart';
import 'package:futoboru/data/models/team_model.dart';

class Matches extends Equatable {
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

  const Matches({
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
