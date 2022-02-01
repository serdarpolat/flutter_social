import 'package:flutter/foundation.dart';

class ProfileProvider with ChangeNotifier {
  int _tab = 0;
  int get tab => _tab;

  setTab(int i) {
    _tab = i;
    notifyListeners();
  }
}
