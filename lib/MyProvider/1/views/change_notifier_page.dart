import 'package:flutter/material.dart';
import 'package:stateManangment/MyProvider/1/core/provider/provider.dart';
import 'package:stateManangment/MyProvider/1/core/view_model/my_custom_data.dart';


class ChangeNotifierPage extends StatelessWidget {
  const ChangeNotifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Change notifier page"),
      
    ),body: ChangeNotifierProvider<MyCustomData>(
      data: MyCustomData.mIstance,
      child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Builder(builder: (columnContext){
        return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(ChangeNotifierProvider.of<MyCustomData>(columnContext)?.value.toString() ?? "Empty")
        ],


      );
      })
    ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){
      MyCustomData.mIstance.incrementValue();
    },child: const Icon(Icons.plus_one),),
    );
  }
}