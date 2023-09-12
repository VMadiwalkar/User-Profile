import 'package:flutter/material.dart';
import 'package:user/model/user.dart';

class UserProvider extends ChangeNotifier {
  List<User> allUser = [
    User(
        firstName: 'Vinay',
        lastName: 'Madiwalkar',
        age: 25,
        number: 88056128894)
  ];

  void addUser(User user) {
    allUser.add(user);
    notifyListeners();
  }

  void removeUser(User user) {
    allUser.remove(user);
    notifyListeners();
  }
}
