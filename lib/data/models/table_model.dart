import 'package:equatable/equatable.dart';
import 'package:futoboru/data/models/team_model.dart';
import 'package:futoboru/domain/entities/table.dart';

class TableModel extends Equatable {
  const TableModel({
    required this.position,
    required this.team,
    required this.playedGames,
    required this.form,
    required this.won,
    required this.draw,
    required this.lost,
    required this.points,
    required this.goalsFor,
    required this.goalsAgainst,
    required this.goalDifference,
  });

  final int? position;
  final TeamModel team;
  final int? playedGames;
  final dynamic form;
  final int? won;
  final int? draw;
  final int? lost;
  final int? points;
  final int? goalsFor;
  final int? goalsAgainst;
  final int? goalDifference;

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
        position: json["position"],
        team: TeamModel.fromJson(json["team"]),
        playedGames: json["playedGames"],
        form: json["form"],
        won: json["won"],
        draw: json["draw"],
        lost: json["lost"],
        points: json["points"],
        goalsFor: json["goalsFor"],
        goalsAgainst: json["goalsAgainst"],
        goalDifference: json["goalDifference"],
      );

  Map<String, dynamic> toJson() => {
        "position": position,
        "team": team.toJson(),
        "playedGames": playedGames,
        "form": form,
        "won": won,
        "draw": draw,
        "lost": lost,
        "points": points,
        "goalsFor": goalsFor,
        "goalsAgainst": goalsAgainst,
        "goalDifference": goalDifference,
      };

  Table toEntity() {
    return Table(
        position: position,
        team: team,
        playedGames: playedGames,
        form: form,
        won: won,
        draw: draw,
        lost: lost,
        points: points,
        goalsFor: goalsFor,
        goalsAgainst: goalsAgainst,
        goalDifference: goalDifference);
  }

  @override
  List<Object?> get props => [
        position,
        team,
        playedGames,
        form,
        won,
        draw,
        lost,
        points,
        goalsFor,
        goalsAgainst,
        goalDifference,
      ];
}
