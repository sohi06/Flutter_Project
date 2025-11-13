import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
 var _width=200.0;
 var _height=100.0;

 var flag=true;
 Decoration mydecor=BoxDecoration(
   borderRadius: BorderRadius.circular(2),
   color: Colors.blueAccent,

 );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),


      // --------------------------------Foo Animation---------------------------------
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                  width:_width,
                  height:_height,
                  decoration: mydecor,
                  duration: Duration(seconds: 1)),
              const SizedBox(height: 20),

              OutlinedButton(onPressed: (){
                setState(() {
                  if(flag){
                  _width=100;
                  _height=200;

                  flag=false;
                  mydecor=BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.green,
                  );

                }
                  else{
                    _width=200;
                    _height=100;

                    mydecor=BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                      color: Colors.greenAccent,
                    );
                    flag=true;
                  }
                });
              }, child:Text("Animation"))
            ],
          ),
        )
    );
  }
}
