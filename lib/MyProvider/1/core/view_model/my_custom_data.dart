import 'package:flutter/material.dart';
import 'package:stateManangment/MyProvider/1/core/extension/log_ext.dart';

class MyCustomData extends ChangeNotifier{

  MyCustomData._sharedInstance();
  static final MyCustomData _instance = MyCustomData._sharedInstance();
  static MyCustomData get mIstance =>_instance;

  double _value = 0;
  double get value => _value;

  @override
  void notifyListeners(){
    "Değişiklik kaydedildi".log();
    super.notifyListeners();
  }

  void incrementValue(){
    _value++;
    notifyListeners();
  }

  set value(double newValue){
    if(_value != newValue){
      _value = newValue;
      notifyListeners();
    }
  }

}