import 'package:flutter/material.dart';

class BottomBarvm extends ChangeNotifier{
 int currentIndex=0;

void navigate(int index){
currentIndex=index;
notifyListeners();
}

}