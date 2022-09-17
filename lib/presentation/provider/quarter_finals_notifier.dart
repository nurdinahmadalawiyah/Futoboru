import 'package:flutter/material.dart';
import 'package:futoboru/common/state_enum.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:futoboru/domain/usecases/get_quarter_finals.dart';

class QuarterFinalsNotifier extends ChangeNotifier {
  final GetQuarterFinals getQuarterFinals;

  QuarterFinalsNotifier(this.getQuarterFinals);

  RequestState _state = RequestState.empty;
  RequestState get state => _state;

  List<Matches> _matches = [];
  List<Matches> get matches => _matches;

  String _message = '';
  String get message => _message;

  Future<void> fetchQuarterFinals() async {
    _state = RequestState.loading;
    notifyListeners();

    final result = await getQuarterFinals.execute();

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
