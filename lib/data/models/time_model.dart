import 'package:equatable/equatable.dart';
import 'package:futoboru/domain/entities/time.dart';

class TimeModel extends Equatable {
  const TimeModel({
    required this.home,
    required this.away,
  });

  final dynamic home;
  final dynamic away;

  factory TimeModel.fromJson(Map<String, dynamic> json) => TimeModel(
        home: json["home"],
        away: json["away"],
      );

  Map<String, dynamic> toJson() => {
        "home": home,
        "away": away,
      };

  Time toEntity() {
    return Time(
      home: home,
      away: away,
    );
  }

  @override
  List<Object?> get props => [home, away];
}
