import 'package:flutter/material.dart';

class Phone extends ChangeNotifier {
  String _name;
  get name => _name;
  set name(String name) {
    _name = name;
    notifyListeners();
  }
}