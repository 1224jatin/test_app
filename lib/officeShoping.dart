import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Officeshoping extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Officeshoping();

}
class _Officeshoping extends State<Officeshoping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  ))
            }, child: Text("go home"))
          ],
        ),
      ),
    );
  }

}