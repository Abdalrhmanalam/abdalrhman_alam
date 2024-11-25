import 'package:flutter/material.dart';

class Home_scren extends ChangeNotifier {
  int conrs = 0;
  void add() {
    conrs++;
    notifyListeners();
  }
}
