import 'package:flutter/material.dart';

class DocPatientMainScreenProvider extends ChangeNotifier {
  int _position = 0;

  int get position => _position;
  set position(int position) {
    _position = position;
    notifyListeners();
  }

  void setposition(int position) {
    _position = position;
  }
}
