import 'package:app_test1/homeTaskScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taskcardscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Taskcardscreen();

}
class _Taskcardscreen extends State<Taskcardscreen>{
List<Map<String,dynamic>> taskList = [
  {"name":"Exercise","isCompleted":false},
  {"name": "Walk" , "isCompleted " : false },
  {"name" : "gym" , "isCompleted ": false},
  {"name" : "Swiming ", "isCompleted" : false }
];

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
            ListView.builder(itemBuilder: (context, index){
              return Container(
                height: 50,
                width: 100,
                child: 
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(taskList[index]["name"]),
                      Spacer(),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          if(taskList[index]["isCompleted"]==false){
                            taskList[index]["isCompleted"] = true ;
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                            Text("${taskList[index]["name"]} is completed"),
                              duration: Duration(seconds: 2),
                            ));

                          }else if (taskList[index]["isCompleted"] == true){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                            Text("${taskList[index]["name"]} is already completed"),
                              duration: Duration(seconds: 1),
                            ));
                          }
                        });

                      }, child: 
                      const Text( "complete"))
                    ],
                  ),
                ),
              );
            },
              itemCount: taskList.length,
            ),
              ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context)=> Hometaskscreen()));
            }, child: const Text("go home screen"))
          ],
        ),
      ),
    );

  }

}