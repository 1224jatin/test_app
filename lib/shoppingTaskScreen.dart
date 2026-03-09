import 'package:app_test1/taskCategories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoppingtaskscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>  _Shoppingtaskscreen();

}
class _Shoppingtaskscreen extends State<Shoppingtaskscreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopping Tasks"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child:
            ListView(
              children: [
                ListTile(
                  title: const Text("Conditioner"),
                ),
                ListTile(
                  title: const Text("Vegies"),
                ),
                ListTile(
                  title: const Text("cold drinks"),
                ),
                ListTile(
                  title: const Text("Mobile Charger"),
                )
              ],

            )),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=> Taskcategories()));
            }, child: const Text(" go home ") )
          ],

        ),
      ),
    );
  }

}