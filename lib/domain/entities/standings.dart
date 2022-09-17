import 'package:equatable/equatable.dart';
import 'package:futoboru/domain/entities/table.dart';

class Standings extends Equatable {
  final String? stage;
  final String? type;
  final String? group;
  final Table? table;

  const Standings({
    required this.stage,
    required this.type,
    required this.group,
    required this.table,
  });

  @override
  List<Object?> get props => [
        stage,
        type,
        group,
        table,
      ];
}
