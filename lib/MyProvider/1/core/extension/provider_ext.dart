

import 'package:flutter/cupertino.dart';
import 'package:stateManangment/MyProvider/1/core/locator/service_locator.dart';
import 'package:stateManangment/MyProvider/1/core/provider/provider.dart';

extension ProviderX<T extends ServiceLocator> on BuildContext{

  R? fetch<R extends Manager>() => Provider.of<T>(this)?.fetch<R>();


}

//context.fetch<T>()
//Provider.of<ServiceLocator>(context)?.fetch<DataClass>().hello;