import 'package:flutter/material.dart';
class dashboard extends StatelessWidget{
  var namefromhome;
  dashboard(this.namefromhome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
   title: Text("Dashboard"),
           ),
      body:
      Container(
        child: Column(
          children: [
            ConstrainedBox(
                constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 100,
              minWidth: 100,
            ),
            child: Text("hello helllo hello  hello helllo hello hello helllo hello hello helllo hello hello helllo hello hello helllo hello "),
            ),
            SizedBox(height: 40,),
            Text("hello $namefromhome ")

          ],
        ),
      ),
    );
  }

}