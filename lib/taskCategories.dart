import 'package:app_test1/homeTaskScreen.dart';
import 'package:app_test1/officeShoping.dart';
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
                      return  Card(
                        child:
                        InkWell(
                          child:
                          Text(cardList[index] ),
                          onTap: (){

                           setState(() {
                             selectedCard == index;
                             if(selectedCard == cardList[index]){
                               if(cardList[index] == 1){
                                 Navigator.push(context,MaterialPageRoute(builder: (context )=> Taskcategories()));
                               }else if (cardList[index]== 2){
                                 Navigator.push(context,MaterialPageRoute(builder: (context )=> Hometaskscreen()));
                               }else if (cardList[index] == 3 ){
                                 Navigator.push(context,MaterialPageRoute(builder: (context )=> Officetaskscreen()));
                               }
                               else if( cardList[index]== 4){
                                 Navigator.push(context , MaterialPageRoute(builder: (context)=> Officeshoping()));

                               }
                             }
                           });
                          },
                        ),
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