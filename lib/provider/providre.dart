import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int i = 0;

  void jumpstep(int value) {
    i = value;
    notifyListeners();
  }

  void backstep() {
    if (i > 0) {
      i--;
      notifyListeners();
    }
  }

  void nextstep() {
    if (i < 5) {
      i++;
      notifyListeners();
    }
  }
}