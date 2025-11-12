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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
       
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black45, // Set the title color here
          backgroundColor: Colors.blue, // Optional: Set AppBar background color
        ),
          textTheme: TextTheme(
              headlineLarge:TextStyle(fontSize: 21,fontWeight: FontWeight.w700, color: Colors.orange),

          ),

      ),
      home: const MyHomePage(title: 'Flutter Restaurant'),
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
  var password=TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arr=['Burger','Pizza','juice','Chicken','Rice'];
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

      // =============================================================Coding starts Here===============================================================================
      body:

      SingleChildScrollView(
        child: Column(
          children: [
            //     ----------------------------------------------------------Navbar-------------------------------------------------------------------------------------
        
        
              Card(
                elevation:.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
        
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsetsGeometry.only(left: 5),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:AssetImage('Assets/image/img.png'),
                                backgroundColor: Colors.white,
                              ),
                              Text("Hello, Foodiesss!",style: Theme.of(context).textTheme.headlineLarge, )
                            ],
                          ),
                        ),
        
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:AssetImage('Assets/image/search.png'),
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundImage:AssetImage('Assets/image/user.png'),
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundImage:AssetImage('Assets/image/settings.png'),
                                backgroundColor: Colors.white,
                              ),
        
                            ],
                          ),
                        )
                      ],
                    ),
                ),
              ),
        
                //     ------------------------------------navbar done-----------------------------------------------
          //-----------------------------------------------------------------   title body-----------------------------------------------------------------------------------------------------
         Container(
           margin: EdgeInsets.only(top: 20),
          width: 450, height: 40,
          
         decoration: BoxDecoration(
           borderRadius: BorderRadius.only(topLeft: Radius.elliptical(70, 50),bottomRight: Radius.elliptical(50, 70)),
           color: Colors.red,
         ),
        
        
             child:
             Center(
           child:
           Text('Get 25% discount ',style: TextStyle(fontSize: 22,color:Colors.white,fontWeight: FontWeight.w500),)),
        
         ),
        
             // -----------------------------------------------------------Menu starts Here----------------------------------------
         Container(
         margin: EdgeInsetsGeometry.only(top: 20),
         color: Colors.orangeAccent,
         width: 430,
         height: 60,
         child:
         Center(child: Text("Menu",style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.red,fontWeight: FontWeight.w800,fontSize: 30 ))),
         ),
            // ------------------------------------------------search Here--------------------------------------------
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              hintText:"Search your desire item here" ,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 2

                  )
              ),
              enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                  width:2,
                ),
              ),

              prefixIcon: IconButton(
                icon: Icon(Icons.search_off_outlined,color: Colors.orangeAccent,),
                onPressed: (){},),

            ),
          ),
        ),
            // ---------------------------------------------------------------Burger-------------------------
            Container(
              width: 350,
                margin: EdgeInsets.only(top: 20),
                child: Text("Burger",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 25)),
        
            ),
            Padding(
        
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage:AssetImage('Assets/image/bu1.png'),
                      backgroundColor: Colors.white,
                    ),
        
                    CircleAvatar(
                      radius: 60,
                      backgroundImage:AssetImage('Assets/image/bu1.png'),
                      backgroundColor: Colors.white,
                    ),
        
                    CircleAvatar(
                      radius: 60,
                      backgroundImage:AssetImage('Assets/image/bu1.png'),
                      backgroundColor: Colors.white,
                    ),
                  ],
        
        
                ),
              ),
            ),
          //   ------------------------------------------------------------------Pizza-----------------------------------------------------
            Container(
              width: 350,
              margin: EdgeInsets.only(top: 20),
              child: Text("Pizza",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 25)),
        
            ),
            Padding(
        
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:AssetImage('Assets/image/bu1.png'),
                          backgroundColor: Colors.white,
                        ),
        
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:AssetImage('Assets/image/bu1.png'),
                          backgroundColor: Colors.white,
                        ),
        
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:AssetImage('Assets/image/bu1.png'),
                          backgroundColor: Colors.white,
                        ),
                      ],
        
        
                    ),
        
                  //   -------2nd row--------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:AssetImage('Assets/image/bu1.png'),
                          backgroundColor: Colors.white,
                        ),
        
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:AssetImage('Assets/image/bu1.png'),
                          backgroundColor: Colors.white,
                        ),
        
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:AssetImage('Assets/image/bu1.png'),
                          backgroundColor: Colors.white,
                        ),
                      ],
        
        
                    ),
                  ],
                ),
              ),
            ),
          //   -----------------------------------------------------------Itemlist---------------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(" Add to cart",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700)),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('${index + 1}'),
                  title: Text(arr[index]),
                  subtitle: Text("Food"),
                  trailing: Icon(Icons.add),
                );
              },
              itemCount: arr.length,
              separatorBuilder: (context, index) {
                return Divider(height: 100, thickness: 2);
              },
            ),
            // ---------------------------------------------------------------button---------------------------------
            ElevatedButton
              (
             child: Text("click here"),
              onPressed: (){
                print("elevated button tapped");
              },)





          ],
        ),
      )// main body column
    );
  }
}
