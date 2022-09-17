import 'package:flutter/cupertino.dart';
import 'package:futoboru/common/state_enum.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:futoboru/domain/usecases/get_matchday2.dart';

class Matchday2Notifier extends ChangeNotifier {
  final GetMatchday2 getMatchday2;

  Matchday2Notifier(this.getMatchday2);

  RequestState _state = RequestState.empty;
  RequestState get state => _state;

  List<Matches> _matches = [];
  List<Matches> get matches => _matches;

  String _message = '';
  String get message => _message;

  Future<void> fetchMatchday2() async {
    _state = RequestState.loading;
    notifyListeners();

    final result = await getMatchday2.execute();

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
