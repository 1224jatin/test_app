import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hometaskscreen extends StatefulWidget {
  @override

  State<StatefulWidget> createState() => _Hometaskscreen();

}
class _Hometaskscreen extends State<Hometaskscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" home task screen "),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Expanded(child:  ListView(
             children: [
               ListTile( title: const Text("Shopping"),),
               ListTile( title: const Text("Paint the wall"),),
               ListTile( title: const Text("Gardening"),),
               ListTile( title: const Text("Dusting"),)
             ],
           )),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Hometaskscreen() ));
            }, child: const Text("back to home"))
          ],
        ),
      ),
    );
  }

}