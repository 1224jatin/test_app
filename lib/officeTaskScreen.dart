import 'package:app_test1/taskCardScreen.dart';
import 'package:app_test1/taskCategories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Officetaskscreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _Officetaskscreen();
}
class _Officetaskscreen extends State<Officetaskscreen>{
  List<Map<String,dynamic>>officeTaskList =
  [
    {"task" : "Assignment", "iscompleted": false},
    {"task" : "meeting" , "iscompleted": false },
    {"task" : "Task" , "iscompleted": false },
    {"task" : "Project" , "iscompleted": false }
  ];
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
            ListView.builder(itemBuilder: (context,index) {
              return Container(
                height: 50 , width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(officeTaskList[index]["task"]),
                    Spacer(),
                    ElevatedButton(onPressed: (){
                      if (officeTaskList[index]["iscompleted"] == false ){
                        officeTaskList[index]["iscompleted"] = true;
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                        const Text(" ${"task"} is completed")
                        ,duration: Duration(seconds: 1),
                        ));
                      }
                      else if(officeTaskList[index]["iscompleted"]== true){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                        const Text(" ${"task"} is  already completed")
                          ,duration: Duration(seconds: 1),
                        ));
                      }


                    }, child: const Text("done"))

                  ],

                )
              );

            },
              itemCount: officeTaskList.length,
            ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop( context ,MaterialPageRoute(builder: (context) => Taskcardscreen()));
            }, child:const Text(" back home"))
          ],
        ),
      ),
    );
  }

}