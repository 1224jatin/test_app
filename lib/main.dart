import 'package:app_test1/taskCategories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homeTaskScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App ",
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {



  String username = "jatin" ;
  int password = 1224;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Daily Tasks"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              keyboardType: TextInputType.emailAddress,

              
              decoration: InputDecoration(
                labelText: " Username"
              ),
                maxLines: 2,
            ),
            SizedBox(height: 10,),
            TextField(

              controller: passController,
              keyboardType: TextInputType.number,
            
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                
                LengthLimitingTextInputFormatter(10),
              ],
              decoration: InputDecoration(
                labelText: "Passsword",
                hintText: "48736"
              ),

            ),
            ElevatedButton(onPressed: (){
              if ( usernameController.text == username && int.tryParse(passController.text)== password ){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> Taskcategories() ));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Try Again")));
              }
            }, child: const Text("Submit"))

          ],

        ),
      ),

    );
  }
}
