import 'package:app_test1/homeTaskScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taskcardscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Taskcardscreen();

}
class _Taskcardscreen extends State<Taskcardscreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Screen"),
      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child:
            ListView(children: [
              ListTile( title: const Text("Exercise")),
              ListTile( title: const Text("Walk")),
              ListTile( title: const Text("Gym")),
              ListTile( title: const Text("Study")),

            ],) ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context)=> Hometaskscreen()));
            }, child: const Text("go home screen"))
          ],
        ),
      ),
    );

  }

}