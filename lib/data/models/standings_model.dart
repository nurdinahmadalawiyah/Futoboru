import 'package:equatable/equatable.dart';
import 'package:futoboru/data/models/table_model.dart';

class StandingsModel extends Equatable {
  const StandingsModel({
    required this.stage,
    required this.type,
    required this.group,
    required this.table,
  });

  final String? stage;
  final String? type;
  final String? group;
  final List<TableModel> table;

  factory StandingsModel.fromJson(Map<String, dynamic> json) => StandingsModel(
        stage: json["stage"],
        type: json["type"],
        group: json["group"],
        table: List<TableModel>.from(
            json["table"].map((x) => TableModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "stage": stage,
        "type": type,
        "group": group,
        "table": List<dynamic>.from(table.map((x) => x.toJson())),
      };

  @override
  List<Object?> get props => [
        stage,
        type,
        group,
        table,
      ];
}
