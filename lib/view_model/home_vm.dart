import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier{
  bool showDoctor=false;

  void showAll(){
showDoctor=!showDoctor;
notifyListeners();
  }
}