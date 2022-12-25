
import 'package:stateManangment/MyProvider/1/core/extension/log_ext.dart';
import 'package:stateManangment/MyProvider/1/core/locator/service_locator.dart';

class WebService extends Manager{
  static final WebService _instance = WebService._sharedInstance();
  static WebService get mInstance =>_instance;

  WebService._sharedInstance();

  @override
  String toString(){
    return "WebSerive Obejct HashCODE :$hashCode";
  }

  String get hello =>"Hello grom webservice";

  @override
  void dispose<T>() {
    "Web service dispose $hashCode".log();
  }

}


class DataClass extends Manager{
  static final DataClass _instance = DataClass._sharedInstance();
  static DataClass get mInstance =>_instance;

  DataClass._sharedInstance();

  @override
  String toString(){
    return "DataClass Obejct HashCODE :$hashCode";
  }

  String get hello =>"Hello grom DataClass";

  

  @override
  void dispose<T>() {
    "DataClass dispose $hashCode".log();
  }

}

