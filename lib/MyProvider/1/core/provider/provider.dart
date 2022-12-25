import 'package:flutter/material.dart';

class Provider<T> extends InheritedWidget{
  const Provider({Key? key,required Widget child,required this.service}) : super(key: key,child: child);


  final T service;

  static T? of<T>(BuildContext context){
    debugPrint("Provider dependOnInheritedWidgetOfExactType T = $T");
    return (context.dependOnInheritedWidgetOfExactType<Provider<T>>())?.service;
  }


  @override
  bool updateShouldNotify(covariant Provider oldWidget) {
    debugPrint("updateShouldNotify Provider");
    return service != oldWidget.service;
  }


}


class ChangeNotifierProvider<T extends Listenable> extends InheritedNotifier{
  ChangeNotifierProvider({Key? key,required this.data,required Widget child}) : super(child: child,key: key,notifier: data);

  final T data;

  static T? of<T extends Listenable>(BuildContext context){
    debugPrint("ChangeNotifierProvider dependOnInheritedWidgetOfExactType T = $T");
    return (context.dependOnInheritedWidgetOfExactType<ChangeNotifierProvider<T>>())?.data;
  }

}

class ViewModel extends ChangeNotifier{}

class Data extends ChangeNotifier{}