import 'package:flutter/material.dart';
import 'package:capek_mikir/models/categories.dart';

class UserStateProvider extends ChangeNotifier {
  String? _name;
  Categories? _category;

  String? get name => _name;
  Categories? get category => _category;

  void setUserData(String name, Categories category) {
    debugPrint("Setting user data");
    _name = name;
    _category = category;
    notifyListeners();
    debugPrint("User data set to $_name, $_category");
  }

  void clearUser() {
    _name = null;
    _category = null;
    notifyListeners();
  }
}
