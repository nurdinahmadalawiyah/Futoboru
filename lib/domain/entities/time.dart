import 'package:equatable/equatable.dart';

class Time extends Equatable {
  dynamic home;
  dynamic away;

  Time({
    required this.home,
    required this.away,
  });

  @override
  List<Object?> get props => [
        home,
        away,
      ];
}
