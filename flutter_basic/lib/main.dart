import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/rounded_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          headlineLarge:TextStyle(fontSize: 21,fontWeight: FontWeight.w300, color: Colors.orange)

      )
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
  var emailText=TextEditingController();
  var password=TextEditingController();

  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
callback(){
    print("callback return!!!");
}
  @override
  Widget build(BuildContext context) {
  var arrnames=['apple','banana','orange','mango','pineapple'];
  var time=DateTime.now();
  var arrcolors=
  [Colors.amber,
    Colors.blueAccent,
    Colors.green,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.purpleAccent,
    Colors.orange,
  ];
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Hello'),
      ),



      body:
        // ----------------------------------positioned widget-------------------
      Container(
        width: 300,
        height: 400,
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              bottom: 41,
                left: 187,
                child: Container(
                   width: 100,
                      height: 200,
                        color: Colors.white,
            ))
          ],
        ),
      )
        //   ----------------------------------------------Rich Text---------------------------------------
        // RichText(text:  TextSpan(
        //   style: TextStyle(
        //     color:Colors.red,
        //     fontSize: 23
        //   ),
        //   children: <TextSpan>[
        //     TextSpan(text:"Hello "),
        //     TextSpan(text:"World!", style: TextStyle(fontSize: 37,color: Colors.blue,fontWeight: FontWeight.bold)),
        // TextSpan(text: " Welcome to")
        //   ]
        // ))
    //     --------------------------------------------------Icon Widget-------------------------------------------
    //   Center(
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Icon(
    //           Icons.play_circle_outlined,
    //           size: 50,color: Colors.orange,
    //         ),
    //         SizedBox(width: 11,),
    //   -------------------------------fontawesome icon--------------------
    //         FaIcon(FontAwesomeIcons.amazon, size: 50,color: Colors.orange,)
    //       ],
    //     ),
    //   )
    );
  }
}
      //   ---------------------------SizeBox--------------------
   // Center(
   //   child: SizedBox.square(
   //     dimension: 340,
   //
   //     child: ElevatedButton(onPressed: (){}, child:Text("login")),
   //   ),
   // )


//   }
        //   ----------------------Wrap widget-------------------------------
        // Wrap(
        //   // direction:Axis.vertical
        //   spacing: 11,
        //   runSpacing: 11,
        //   alignment: WrapAlignment.spaceAround,
        //   children: [
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //         width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //     Container(
        //       color:Colors.pink,
        //       height: 200,
        //       width: 100,
        //     ),
        //   ],
        // )


        //   -----------------Custom Widget-------------------------------
        // Container(
        //   width: 150,
        //   height: 70,
        //   child: RoundedButton(btnName: 'Play',icon:Icon(Icons.play_arrow),callback: (){
        //     print("logged in");
        //   },bgcolor: Colors.blueAccent,),
        // )
        //



        //---------------------------------------------Stack---------------------------------------------------------------------------------------------------------
          // Container(
          //   height: 200,
          //   width: 200,
          //   child: Stack(
          //     children: [
          //       Container(
          //              height: 200,
          //              width: 300,
          //              child: Image.asset("Assets/images/flutter.png")),
          //       Center(
          //         child: Container(
          //           child: Text("the boy"),
          //
          //         ),
          //       )
          //
          //
          //     ],
          //   ),
          // )


        
        
        
        
        
        
        // -------------------------------Widgets class--------__________________________________
        // Container(
        //   child: Column(
        //     children: [
        //       Button(),
        //       Button2()
        //
        //     ],
        //   ),
        // )
//     );
//   }
// }
// class Button extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    return ElevatedButton(onPressed: (){}, child: Text("Click me"),);
//   }
//   }
//
// class Button2 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: (){}, child: Text("i am second button "),);
//   }
// }


//         -----------------------------------------------callback
//ElevatedButton(onPressed: callback, child: Text("Click me"))
      //     ------------- dynamic gridview---------------------------------------
      // GridView.builder(
      //   itemCount: arrcolors.length,
      //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 100,
      //     crossAxisSpacing: 11,
      //     mainAxisSpacing: 11,
      //   ),
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: arrcolors[index],
      //     );
      //   },
      // )



      //     -------------gridview---------------------------------------
    //     Column(
    //       children: [
    //         Container(
    //           height:200,
    //           child: GridView.count(crossAxisCount:4,
    //           crossAxisSpacing: 11,
    //           mainAxisSpacing: 11,
    //
    //           children: [
    //             Container(color:arrcolors[0],),
    //             Container(color:arrcolors[1],),
    //             Container(color:arrcolors[2],),
    //             Container(color:arrcolors[3],),
    //             Container(color:arrcolors[4],),
    //             Container(color:arrcolors[5],),
    //             Container(color:arrcolors[6],),
    //             Container(color:arrcolors[7],),
    //
    //             ],),
    //         ),
    //         Container(
    //           height:400,
    //         ),
    //
    //         Container(
    //           height: 300,
    //
    //           child: GridView.extent(maxCrossAxisExtent: 50,crossAxisSpacing: 11,mainAxisSpacing: 11,
    //
    //
    //             children: [
    //               Container(color:arrcolors[0],),
    //               Container(color:arrcolors[1],),
    //               Container(color:arrcolors[2],),
    //               Container(color:arrcolors[3],),
    //               Container(color:arrcolors[4],),
    //               Container(color:arrcolors[5],),
    //               Container(color:arrcolors[6],),
    //               Container(color:arrcolors[7],),],
    //
    //               ),
    //         ),
    //
    // ],),




//  ------------------------------------------------Date Picker-----------------------------------------------------------------------------------
      // Center(
      //   child: Column(
      //     children: [
      //       Text("select date",
      //       style: TextStyle(fontSize: 35),),
      //       ElevatedButton(onPressed: () async{
      //         DateTime?datePicked=await showDatePicker
      //
      //           (context: context,
      //             initialDate:DateTime.now(),
      //             firstDate: DateTime(2021), lastDate: DateTime(2050),)
      //         ;
      //         if(datePicked!=null){
      //           print('date selected:${datePicked.day}-${datePicked.month}');
      //         }
      //       },
      //           child:Text('show')),
      //       ElevatedButton(onPressed: () async{
      //         TimeOfDay?PickedTime=await showTimePicker(
      //             context: context, initialTime: TimeOfDay.now(),
      //         initialEntryMode: TimePickerEntryMode.input);
      //         if(PickedTime!=null){
      //           print('date selected:${PickedTime.hour}-${PickedTime.minute}');
      //         }
      //
      //       }, child: Text("selected time"))
      //
      //     ],
      //   ),
      // ),

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
      //   =================================================================Date time=================================================================================

// Center(
//   child: Container(
//     height: 200,
//     width: 400,
//     child: Column(
//       children: [
//         Text("Current Time Now: ${time}",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Colors.red
//         ),),
//       ElevatedButton(onPressed: (){
//         setState(() {
//          
//         });
//       }, child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text("current Year: ${time.year}"),
//       ))
//       ],
//     ),
//   ),
// ),


      //   -----------------------------------------------------------User Input?Text Box------------------------------------------------------------
        // Center(
        //   child: Container(
        //     width: 300,
        //
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: TextField(
        //             controller: emailText,
        //
        //             decoration: InputDecoration(
        //               hintText:"enter your password" ,
        //               focusedBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(11),
        //                 borderSide: BorderSide(
        //                   color: Colors.deepOrange,
        //                   width: 2
        //
        //                 )
        //               ),
        //                   enabledBorder:OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(11),
        //                       borderSide: BorderSide(
        //                           color: Colors.blueAccent,
        //                         width:2,
        //                       ),
        //                   ),
        //               suffixIcon: IconButton(
        //                   icon: Icon(Icons.remove_red_eye_outlined,color: Colors.orangeAccent,),
        //               onPressed: (){},),
        //
        //             ),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: TextField(
        //             controller: password,
        //             obscureText: true,
        //             decoration: InputDecoration(
        //               hintText:"enter your password" ,
        //               focusedBorder: OutlineInputBorder(
        //                   borderRadius: BorderRadius.circular(11),
        //                   borderSide: BorderSide(
        //                       color: Colors.deepOrange,
        //                       width: 2
        //
        //                   )
        //               ),
        //               enabledBorder:OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(11),
        //                 borderSide: BorderSide(
        //                   color: Colors.blueAccent,
        //                   width:2,
        //                 ),
        //               ),
        //
        //               prefixIcon: IconButton(
        //                 icon: Icon(Icons.search_off_outlined,color: Colors.orangeAccent,),
        //                 onPressed: (){},),
        //
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      //   -----------------------------------------------------------User Input?Text Box------------------------------------------------------------

      // Center(
      //   child: Card(
      //     elevation: 8,
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("hello card widget",style: TextStyle(fontSize: 23),),
      //     ),
      //   ),
      // )




        // ------------------------------------------Circle Avatar and theme-----------------------------------------------------------------------------------

        // Center(
        //   child: CircleAvatar(
        //     child: Container(
        //       width: 60,
        //       height: 60,
        //       child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Container(
        //             width: 40,
        //             height: 40,
        //             child: Image.asset('Assets/images/img.png'),
        //           ),
        //           Text("baby",style: Theme.of(context).textTheme.headlineLarge,),
        //           // Text("baby",style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.purple),),
        //         ],
        //       ),
        //     ),
        //     backgroundColor: Colors.green,
        //     maxRadius: 80,
        //   ),
        // )

    //     =======================================================List Tile===================================================================================================================
    //   ListView.separated(itemBuilder: (context,index){
    //
    //     return ListTile(
    //       leading: Text('${index+1}'),
    //       title: Text(arrnames[index]),
    //       subtitle: Text("Fruit"),
    //       trailing: Icon(Icons.add),
    //     );
    //
    //   },
    //     itemCount: arrnames.length,
    //     separatorBuilder: (context,index) {
    //     return Divider(height: 100,thickness:2);
    //     },
    //   )


//===============================================Margin,Padding================================================================================================================================
// Container(
//   color: Colors.orange,
//   margin: EdgeInsets.all(8),
//   child: Padding(
//     padding: const EdgeInsets.only(bottom: 12,top: 12,left: 12,right: 10),
//     child: Text("hellllloooooo!",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
//   ),
// )





//         ========================================================== Container design==========================================================================
//     Container(
//       width: double.infinity,
//       height: double.infinity,
//       color: Colors.blueGrey,
//       child: Center(
//         child: Container(
//
//           height: 200,
//           width: 300,
//           decoration: BoxDecoration(
//             color: Colors.yellow,
//             // borderRadius:BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.elliptical(20, 40)),
//               borderRadius: BorderRadius.all(Radius.circular(50)),
//             border: Border.all(
//               width: 2,
//               color: Colors.black,
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 spreadRadius:21,
//                 blurRadius: 41,
//
//             )]
//           ),
//         ),
//       ),
//     )


//=====================================Expanded widget ==============================================================

// Padding(
//   padding: const EdgeInsets.all(8.0),
//
//     child: Row(
//       children: [
//         Expanded(
//
//           child: Container(
//             width: 145,
//             height: 65,
//             color: Colors.orange,
//           ),
//         ),
//
//         Expanded(
//           flex: 2,
//           child: Container(
//             width: 145,
//             height: 65,
//             color: Colors.blue,
//           ),
//         ),
//         Expanded(
//           flex: 4,
//           child: Container(
//             width: 245,
//             height: 65,
//             color: Colors.green,
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: Container(
//             width: 245,
//             height: 65,
//             color: Colors.orange,
//           ),
//         ),
//
//
//       ],
//     ),
//
// ),






//--------------------------------------------------ListView builder---------------------------========================================================================================
    //   ListView.builder(itemBuilder: (context,index){
    //     return Text(arrnames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),);
    //
    // },
    //     itemCount: arrnames.length,
    //     itemExtent: 100,
    //     scrollDirection: Axis.horizontal,
    //   )
//------------------------------------------------ListView separator-------------------------------------------====================================================================================

//       ListView.separated(itemBuilder: (context,index){
//
//         return Text(arrnames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),);
//
//       },
//         itemCount: arrnames.length,
//         separatorBuilder: (context,index) {
//         return Divider(height: 100,thickness:2);
//         },
//       )






//-----------------------------------------Listview--------------------------
//       Center(
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           // reverse: true,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('One',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('two',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('three',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('four',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
//             ),
//           ],
//         ),
//       )


        //   -------------------------Inkwell--------------------------------------------------------
        // Center(
        //   child: InkWell(
        //     onTap: (){
        //       print("tap on container");
        //     },
        //     onDoubleTap:
        //         (){
        //       print("Double tap on container");
        //     },
        //     child: Container(
        //       width: 150,
        //       height: 100,
        //       color: Colors.lightBlueAccent,
        //     ),
        //   ),
        // )

    //   // -------------------------------------------------------scroll view--------------------------------------------------
    //   Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(bottom:11),
    //             child: SingleChildScrollView(
    //               scrollDirection: Axis.horizontal,
    //               child: Row(
    //                 children: [
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.orange,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.green,
    //                   ),  Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.purple,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.yellow,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.green,
    //                   ),  Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.purple,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.blue,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.green,
    //                   ),  Container(
    //                     margin: EdgeInsets.only(right:11),
    //                     height: 200,
    //                     width: 200,
    //                     color: Colors.purple,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           Container(
    //             margin: EdgeInsets.only(bottom:11),
    //             height: 200,
    //             color: Colors.green,
    //           ),
    //           Container(
    //             margin: EdgeInsets.only(bottom:11),
    //             height: 200,
    //             color: Colors.pink,
    //           ),
    //           Container(
    //             margin: EdgeInsets.only(bottom:11),
    //             height: 200,
    //             color: Colors.orange,
    //           ),
    //           Container(
    //             margin: EdgeInsets.only(bottom:11),
    //             height: 200,
    //             color: Colors.blue,
    //           ),
    //           Container(
    //             margin: EdgeInsets.only(bottom:11),
    //             height: 200,
    //             color: Colors.green,
    //           ),
    //           Container(
    //             margin: EdgeInsets.only(bottom:11),
    //             height: 200,
    //             color: Colors.pink,
    //           ),
    //           Container(
    //             margin: EdgeInsets.only(bottom:11),
    //             height: 200,
    //             color: Colors.orange,
    //           ),
    //         ],
    //       ),
    //     ),
    //   )
    // // ------------------------------------------------------------------------------------------------------------------------------





//--------------------------   image   ------------------------------------
      //  Center(child: Container(
      //      height: 200,
      //      width: 300,
      //      child: Image.asset("Assets/images/flutter.png")))

      //--------------------------   text button------------------------------------

      // TextButton
      //   (child: Text("click here"),onPressed: (){
      //     print("text button tapped");
      // },
      // onLongPress: (){
      //     print("longggg presss");
      // },)



      //------------------------     Elevated button------------------------------------
      // ElevatedButton
      //   (
      //   child: Text("click here"),
      //   onPressed: (){
      //     print("elevated button tapped");
      //   },)


      // -------------------------------    Outlined button------------------------------------
      // OutlinedButton
      //   (
      //   child: Text("click here"),
      //   onPressed: (){
      //     print(" outlined button tapped");
      //   },)



      // -------------------------------container ,text design------------------------------------------
      // Center(
      //   child:Container(
      //     width: 100,
      //     height: 200,
      //     color: Colors.lightBlueAccent,
      //     child: Center(child: Text("helloo",style: TextStyle(fontSize: 45,backgroundColor: Colors.black, color: Colors.white),)),
      //   ) ,
      //
      // )




//   ---------------------------------------Row Column---------------------------------------------------------------------------
// Container(
//   height: 300,
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//        children: [
//         Text("r1",style: TextStyle(fontSize: 14, color: Colors.black),),
//          Text("r1",style: TextStyle(fontSize: 14, color: Colors.black),),
//          Text("r1",style: TextStyle(fontSize: 14, color: Colors.black),),
//
//       ],),
//     Text("helloo",style: TextStyle(fontSize: 14,backgroundColor: Colors.black, color: Colors.white),),
//     Text("helloo",style: TextStyle(fontSize: 14,backgroundColor: Colors.black, color: Colors.white),),
//     Text("helloo",style: TextStyle(fontSize: 14,backgroundColor: Colors.black, color: Colors.white),),
//     TextButton (child: Text("click here"),onPressed: (){
//       print("text button tapped");
//     },),
//       ],
//     ),
// )
