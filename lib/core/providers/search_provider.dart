import 'package:flutter/foundation.dart';

class SearchProvider with ChangeNotifier {
  int _filter = 0;
  int get filter => _filter;

  setFilter(int i) {
    _filter = i;
    notifyListeners();
  }
}
