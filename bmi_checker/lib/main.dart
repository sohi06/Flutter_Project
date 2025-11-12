import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  var wtcontroller=TextEditingController();
  var htcontroller=TextEditingController();
  var incontroller=TextEditingController();
  var result="";
  var bgcolor=Colors.indigo.shade200;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Your BMI"),



      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI',style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),),
                SizedBox(height: 21,),
                TextField(
                  controller: wtcontroller,
                  decoration: InputDecoration(
                    label: Text('Enter Your Weight (In KG):'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType:TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: htcontroller,
                  decoration: InputDecoration(
                    label: Text('Enter Your height (In Feet):'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType:TextInputType.number,
                ),

                SizedBox(height: 11,),
                TextField(
                  controller: incontroller,
                  decoration: InputDecoration(
                    label: Text('Enter Your height (In Inches):'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType:TextInputType.number,
                ),
                SizedBox(height: 16,),

                ElevatedButton(onPressed: (){
                  var wt=wtcontroller.text.toString();
                  var ft=htcontroller.text.toString();
                  var inc=incontroller.text.toString();

                  if(wt!=""&& ft!="" && inc!=""){
                    //   bmi calculation
                    var iwt=int.parse(wt);
                    var ift=int.parse(ft);
                    var iinc=int.parse(inc);


                    var tinch=(ift*12)+iinc;

                    var tcm=tinch*2.54;
                    var tm=tcm/100;
                    var bmi= iwt/(tm*tm);
                    var msg="";


                    if(bmi>25){
                      msg="You're OverWeight!!!";
                      bgcolor=Colors.orange;
                    }
                    else if(bmi<18){
                      msg="You're UnderWeight!!!";
                      bgcolor=Colors.red;
                    }
                    else{
                      msg="You're Healthy!!!";
                      bgcolor=Colors.green;
                    }


                    result ='$msg\n Your BMI Is: ${bmi.toStringAsFixed(2)}';
                    setState(() {

                    });
                  }
                  else{
                    setState(() {
                      result='please fill the required blanks!!!!';
                    });
                  }

                }, child: Text('Calculate')),
                SizedBox (height: 16,),

                Text(result,style: TextStyle(fontSize: 16),),
              ],
            ),
          ),
        ),
      ),


    );
  }
}