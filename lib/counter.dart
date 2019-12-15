import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int count = 0;

  void increment() {
    ++count;
    notifyListeners();
  }
}
