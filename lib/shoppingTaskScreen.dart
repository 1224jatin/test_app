import 'package:app_test1/taskCategories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoppingtaskscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>  _Shoppingtaskscreen();

}
class _Shoppingtaskscreen extends State<Shoppingtaskscreen>{
  List<Map<String,dynamic>> shoppinglist = [
    {"task": "Conditioner" , "isCompleted": false},
    {"task": "vegies", "isCompleted" : false },
    {"task": "coldrinks", "isCompleted" : false },
    {"task": "Mobile charger ", "isCompleted" : false },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopping Tasks"),),
      body: Center(
        child:
        Expanded(child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView.builder(itemBuilder: (context,index){
              return Container(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(shoppinglist[index]["task"]),
                    Spacer(),
                    ElevatedButton(onPressed: (){
                      if (shoppinglist[index]["isCompleted"]== false){
                        if(shoppinglist[index]["isCompleted"]== false){
                          shoppinglist[index]["isCompleted"] = true;
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                          Text("${"task"} is completed"),
                            duration: Duration(seconds: 1),));
                        }
                        else if(shoppinglist[index]["isCompleted"]== true){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                          Text("${"task"} is allready completed"),
                            duration: Duration(seconds: 1),));

                        }
                      }
                    }, child:
                    const Text("done")),

                  ],
                ),
              );
            }
              ,itemCount: shoppinglist.length,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=> Taskcategories()));
            }, child: const Text(" go home ") )
          ]
          ,
        ),

          )

        ,

      ),
    );
  }

}