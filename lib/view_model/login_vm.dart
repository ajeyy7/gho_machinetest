import 'package:flutter/material.dart';
import 'package:gho_machinetest/helper/db.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel extends ChangeNotifier {
  String? email;
  String? password;
  bool visible = false;
  bool isLoading = false;
  void togglePass() {
    visible = !visible;
    notifyListeners();
  }

  Future<bool> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      var userData = await SharedPreferencesHelper.getUserData();
      if (userData['email'] == email && userData['password'] == password) {
        isLoading = false;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('isLoggedIn', true);

        notifyListeners();
        return true;
      } else {
        isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
