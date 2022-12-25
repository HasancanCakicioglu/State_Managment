import 'package:flutter/material.dart';
import 'package:stateManangment/MyProvider/1/core/data/web_service.dart';
import 'package:stateManangment/MyProvider/1/core/locator/service_locator.dart';
import 'package:stateManangment/MyProvider/1/core/provider/all_providers.dart';
import 'package:stateManangment/MyProvider/1/core/provider/provider.dart';
import 'package:stateManangment/MyProvider/1/views/change_notifier_page.dart';
import 'package:stateManangment/MyProvider/1/views/home_page.dart';


void main(){
  runApp(FlutterApp());
  
}


class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build");
    
    return Provider<ServiceLocator>(
      service: ServiceLocator(
        {
          WebService:()=>WebService.mInstance,
          DataClass:()=>DataClass.mInstance,
          AllProviders:()=>AllProviders(
            providers:[
              WebService.mInstance,
              DataClass.mInstance,
            ] ),
        }
      ),
    
    child:MaterialApp(
      darkTheme:ThemeData.dark(),
      theme:ThemeData(),
      home: const HomePage(),
    ));
  }
}

