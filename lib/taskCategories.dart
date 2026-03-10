import 'package:app_test1/homeTaskScreen.dart';
import 'package:app_test1/officeShoping.dart';
import 'package:app_test1/shoppingTaskScreen.dart';
import 'package:app_test1/taskCardScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'officeTaskScreen.dart';

class Taskcategories extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Taskcategories();

}
class _Taskcategories extends State<Taskcategories> {
  List<String> cardList = ["Task","home Task ", "office Task ", "Shopping Task"];
  var selectedCard ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: const Text(" my app"),
      ),
      body:Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                 GridView.builder(
                   shrinkWrap: true,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                   ),
                    itemBuilder:(context,index){
                      return GestureDetector(
                        onTap: (){
                          if(index == 0){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Taskcardscreen()));
                          }else if ( index ==1 ){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Hometaskscreen()));
                          }else if( index==2) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Officetaskscreen()));
                          } else if (index == 3 ){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Shoppingtaskscreen()));
                            }
                        },
                        child: Container(
                          padding: EdgeInsets.all(30),
                          child:
                          Card(
                            child:
                            Text(cardList[index]),
                            color: Colors.blueGrey,
                          ),
                        )
                      );
                    },
                   itemCount: cardList.length,
                ),
            ],
          ),
      ),
    );
  }
}