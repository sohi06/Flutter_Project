import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation/main.dart';
class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()
    {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> homepage(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
        color: Colors.greenAccent,
        child: Center(
          child: Text("Welcome", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
