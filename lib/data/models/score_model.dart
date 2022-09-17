import 'package:equatable/equatable.dart';
import 'package:futoboru/data/models/time_model.dart';
import 'package:futoboru/domain/entities/score.dart';

class ScoreModel extends Equatable {
  const ScoreModel({
    required this.winner,
    required this.duration,
    required this.fullTime,
    required this.halfTime,
  });

  final dynamic winner;
  final String? duration;
  final TimeModel fullTime;
  final TimeModel halfTime;

  factory ScoreModel.fromJson(Map<String, dynamic> json) => ScoreModel(
        winner: json['winner'],
        duration: json['duration'],
        fullTime: TimeModel.fromJson(json['fullTime']),
        halfTime: TimeModel.fromJson(json['halfTime']),
      );

  Map<String, dynamic> toJson() => {
        "winner": winner,
        "duration": duration,
        "fullTime": fullTime.toJson(),
        "halfTime": halfTime.toJson(),
      };

  Score toEntity() {
    return Score(
      winner: winner,
      duration: duration,
      fullTime: fullTime,
      halfTime: halfTime,
    );
  }

  @override
  List<Object?> get props => [
        winner,
        duration,
        fullTime,
      ];
}
