import 'package:equatable/equatable.dart';
import 'package:futoboru/data/models/matches_model.dart';

class MatchesResponse extends Equatable {
  final List<MatchesModel> matchesList;

  const MatchesResponse({required this.matchesList});

  factory MatchesResponse.fromJson(Map<String, dynamic> json) =>
      MatchesResponse(
        matchesList: List<MatchesModel>.from((json["matches"] as List)
            .map((x) => MatchesModel.fromJson(x))
            .where((element) => element.group != null)),
      );

  Map<String, dynamic> toJson() => {
    "matches": List<dynamic>.from(matchesList.map((x) => x.toJson()))
  };

  @override
  List<Object> get props => [matchesList]; 
}
