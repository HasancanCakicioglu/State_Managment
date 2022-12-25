import 'package:stateManangment/MyProvider/1/core/locator/service_locator.dart';

class AllProviders extends Manager{

  final List<Manager> providers;

  AllProviders({required this.providers});
  
  @override
  void dispose<T>() {
    for(final manager in providers){
      manager.dispose();
    }
  }



}