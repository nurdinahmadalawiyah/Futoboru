import 'package:flutter/material.dart';
import 'package:futoboru/common/state_enum.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:futoboru/domain/usecases/get_third_place.dart';

class ThirdPlaceNotifier extends ChangeNotifier {
  final GetThirdPlace getThirdPlace;

  ThirdPlaceNotifier(this.getThirdPlace);

  RequestState _state = RequestState.empty;
  RequestState get state => _state;

  List<Matches> _matches = [];
  List<Matches> get matches => _matches;

  String _message = '';
  String get message => _message;

  Future<void> fetchThirdPlace() async {
    _state = RequestState.loading;
    notifyListeners();

    final result = await getThirdPlace.execute();

    result.fold(
      (failure) {
        _message = failure.message;
        _state = RequestState.error;
        notifyListeners();
      },
      (matchesData) {
        _matches = matchesData;
        _state = RequestState.loaded;
        notifyListeners();
      },
    );
  }
}
