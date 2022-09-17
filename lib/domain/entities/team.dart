import 'package:equatable/equatable.dart';

class Team extends Equatable {
  dynamic id;
  dynamic name;
  dynamic shortName;
  dynamic crest;
  dynamic tla;

  Team({
    required this.id,
    required this.name,
    required this.shortName,
    required this.tla,
    required this.crest,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        shortName,
        tla,
        crest,
      ];
}
