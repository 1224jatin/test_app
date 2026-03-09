import 'package:app_test1/taskCardScreen.dart';
import 'package:app_test1/taskCategories.dart';
import 'package:flutter/material.dart';

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
      home: Taskcardscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {



  Text  username = const Text("Jatin12") ;
  int password = 223;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passContrlloer = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
                maxLines: 2,
            ),
            TextField(

              controller: usernameController,

            ),
            ElevatedButton(onPressed: (){
              if ( usernameController.value == username && passContrlloer== password ){


              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("submit")));
              }
            }, child: const Text("Submit"))

          ],

        ),
      ),

    );
  }
}
