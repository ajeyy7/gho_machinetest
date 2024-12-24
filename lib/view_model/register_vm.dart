import 'package:flutter/material.dart';
import 'package:gho_machinetest/helper/db.dart';
import 'package:gho_machinetest/model/country_model.dart';

class RegisterViewModel extends ChangeNotifier {
  String? email;
  String? password;
  bool visible = false;
  bool isLoading = false;
  final List<CountryCode> countries = [
    CountryCode(code: '+91', country: '+91', flag: '🇮🇳'),
    CountryCode(code: '+1', country: '+1', flag: '🇺🇸'),
    CountryCode(code: '+44', country: '+44', flag: '🇬🇧'),
  ];
  void togglePass() {
    visible = !visible;
    notifyListeners();
  }

  Future<void> register(String email, String password, String mobile) async {
    await SharedPreferencesHelper.saveUserData(email, password, mobile);
  }
}
