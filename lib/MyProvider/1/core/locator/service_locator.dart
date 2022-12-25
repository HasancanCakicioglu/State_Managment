import 'dart:async';
import 'package:flutter/material.dart';
typedef FactoryData = Map<dynamic,Function>;
typedef RepositoryData = Map<dynamic,Manager>;

mixin IServiceLocator{
  T fetch<T>();
}

abstract class Manager{
  void dispose<T>();
}


class ServiceLocator extends Manager with IServiceLocator{

  final FactoryData _factories;
  final RepositoryData _repositories = <dynamic,Manager>{};

  ServiceLocator(this._factories);
  
  @override
  void dispose<T>() {
    final Manager manager = _repositories[T]!;
    manager.dispose();
    _repositories.remove(T);
  }

  dynamic _add(T) => _repositories[T] = _factories[T]!();

 
  
  @override
  T fetch<T>() {
    return _repositories.containsKey(T) ? _repositories[T] : _add(T);
  }

}
