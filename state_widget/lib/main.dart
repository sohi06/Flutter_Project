import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: "FlutterApp",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.brown,
      shadowColor: Colors.orangeAccent,
    ),
    home:DashBoardScreen() ,
  );

  }
  
  
}
class DashBoardScreen extends StatefulWidget{
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}


class _DashBoardScreenState extends State<DashBoardScreen> {
  var count=0;
  var no1Controller= TextEditingController();
  var no2Controller= TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
   appBar: AppBar(
     title: Text("My App Dashboard", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),),
   ),
   body:

       // Center(
       //   child: Column(
       //     children: [
       //       Text('counter: $count'),
       //       ElevatedButton(onPressed: (){
       //         setState(() {
       //           count++;
       //
       //         });
       //
       //       },
       //           child: Text("Increment"))
       //     ],
       //   ),
       // ),



 //------------------------------Basic calculator-----------------------------------------------
      Container(
        color: Colors.deepOrange,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var sum=no1+no2;
                        result="the sum of $no1 and $no2 is  $sum";
                        setState(() { });
                       // should call at the last or inside
                      },
                          child: Text("ADD")),

                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var sub=no1-no2;
                        result="the sub of $no1 and $no2 is  $sub";
                        setState(() { });
                      }, child: Text("SUB")),
                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var mul=no1*no2;
                        result="the sum of $no1 and $no2 is  $mul";
                        setState(() { });
                      }, child: Text("MUL")),
                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var div=no1/no2;
                        result="the sum of $no1 and $no2 is  ${div.toStringAsFixed(3)}";
                        setState(() { });
                      }, child: Text("DIV")),

                     ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(result, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.orange),),
                )
              ],
            ),
          ),
        ),
      )
 );
  }
}