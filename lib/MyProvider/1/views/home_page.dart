
import 'package:flutter/material.dart';
import 'package:stateManangment/MyProvider/1/core/data/web_service.dart';
import 'package:stateManangment/MyProvider/1/core/extension/log_ext.dart';
import 'package:stateManangment/MyProvider/1/core/extension/provider_ext.dart';
import 'package:stateManangment/MyProvider/1/core/locator/service_locator.dart';
import 'package:stateManangment/MyProvider/1/core/provider/all_providers.dart';
import 'package:stateManangment/MyProvider/1/core/provider/provider.dart';
import 'package:stateManangment/MyProvider/1/views/change_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              //var result = Provider.of<ServiceLocator>(context)?.fetch<DataClass>().hello;
              context.fetch<DataClass>()?.log();
              context.fetch<WebService>()?.log();
              
            }, child: const Text("Fetch Instances...")),
            ElevatedButton(onPressed: (){
              
              context.fetch<AllProviders>()?.dispose();
              
            }, child: const Text("Dispose All")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChangeNotifierPage()));
            }, child: Text("2. Sayfa"))
          ],
        ),
      ),
    );
  }
}