import 'package:equatable/equatable.dart';
import 'package:futoboru/domain/entities/team.dart';

class TeamModel extends Equatable {
  TeamModel({
    required this.id,
    required this.name,
    required this.shortName,
    required this.crest,
    required this.tla,
  });

  dynamic id;
  dynamic name;
  dynamic shortName;
  dynamic crest;
  dynamic tla;

  factory TeamModel.fromJson(Map<String, dynamic> json) => TeamModel(
        id: json["id"],
        name: json["name"],
        shortName: json["shortName"],
        tla: json["tla"],
        crest: json["crest"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "shortName": shortName,
        "tla": tla,
        "crest": crest,
      };

  Team toEntity() {
    return Team(
      id: id,
      name: name,
      shortName: shortName,
      crest: crest,
      tla: tla,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        shortName,
        crest,
        tla,
      ];
}
