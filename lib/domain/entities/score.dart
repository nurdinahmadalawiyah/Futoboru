import 'package:equatable/equatable.dart';
import 'package:futoboru/data/models/time_model.dart';

class Score extends Equatable {
  final dynamic winner;
  final String? duration;
  final TimeModel fullTime;
  final TimeModel halfTime;

  const Score({
    required this.winner,
    required this.duration,
    required this.fullTime,
    required this.halfTime,
  });

  @override
  List<Object?> get props => [
        winner,
        duration,
        fullTime,
        halfTime,
      ];
}
