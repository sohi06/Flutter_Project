import 'package:flutter/material.dart';
import 'package:navigation/dashboard.dart';
import 'package:navigation/splash.dart';

void main(){
runApp(Flutter3());
}

class Flutter3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "flutter with navigation",
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.greenAccent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
      ),
      debugShowCheckedModeBanner: false,
      home:Splash(),

    );
  }
  
}
class homepage extends StatelessWidget{
  var namecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Homepage', style: TextStyle(fontWeight: FontWeight.bold),)),

    body:
    Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to the Home Page ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
            SizedBox(height: 21),
            TextField(
              controller: namecontroller,
            ),
            ElevatedButton(

      onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
      return dashboard(namecontroller.text.toString());
      }),
      );
      }, child: Text("Next"))
          ],
        ),
      ),
    )
    ,
  );
  }

}