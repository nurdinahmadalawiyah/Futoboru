import 'package:flutter/cupertino.dart';
import 'package:futoboru/common/state_enum.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:futoboru/domain/usecases/get_matchday3.dart';

class Matchday3Notifier extends ChangeNotifier {
  final GetMatchday3 getMatchday3;

  Matchday3Notifier(this.getMatchday3);

  RequestState _state = RequestState.empty;
  RequestState get state => _state;

  List<Matches> _matches = [];
  List<Matches> get matches => _matches;

  String _message = '';
  String get message => _message;

  Future<void> fetchMatchday3() async {
    _state = RequestState.loading;
    notifyListeners();

    final result = await getMatchday3.execute();

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
