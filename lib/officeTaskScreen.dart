import 'package:app_test1/taskCategories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Officetaskscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Officetaskscreen();
}
class _Officetaskscreen extends State<Officetaskscreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("office Task"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child:
            ListView(
              children: [
                ListTile(
                  title: const Text("Assignment"),
                ),
                ListTile(
                  title: const Text("Meeting"),
                ),
                ListTile(
                  title: const Text("Tasks"),
                ),
                ListTile(
                  title: const Text("Project"),
                )
              ],
            ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop( context ,MaterialPageRoute(builder: (context) => Taskcategories()));
            }, child:const Text(" back home"))
          ],
        ),
      ),
    );
  }

}