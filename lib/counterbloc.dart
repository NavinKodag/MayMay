import 'package:flutter/material.dart';


class Counter extends ChangeNotifier{

  int _counter = 0;
  int get counter => _counter;

  set counter(int val){
    _counter = val;
    notifyListeners();
  }



  increment(){
    _counter++;
    notifyListeners();
  }


  decrement(){
    _counter--;
    notifyListeners();
  }

}