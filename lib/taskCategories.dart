import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taskcategories extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Taskcategories();

}
class _Taskcategories extends State<Taskcategories> {
  List<String> cardList = ["Task","home Task ", "office Task ", "Shopping Task"];
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
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        ),
                    itemBuilder:(context,index){
                      return  Card(
                        child:
                        InkWell(
                          child:
                          Text(cardList[index] ),
                        ),
                      );
                    }
                ),

            ],


          ),

      ),
    );
  }

}