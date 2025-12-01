import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/hourly_forecast.dart';
import 'additional_information.dart';
import 'package:http/http.dart';

class WeatherScreen extends StatefulWidget{
  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Future getCurrentWeather() async{
    String cityname='London';
   final res=await http.get(
   Uri.parse('https://http://api.openweathermap.org/data/2.5/weather?q=$cityname&APPID=e29e1e214e0a75c89a5552a62a000412'),
 );
 print(res)
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:
     AppBar
       (title: const Text("Weather App",style: TextStyle(fontWeight: FontWeight.w600),),centerTitle: true,
         actions: [
            IconButton(onPressed: (){}, icon: const Icon((Icons.refresh)))
                ],),


body: 
     Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           //main card
        SizedBox(
          width: double.infinity,
          child: Card(
            elevation: 10,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(16),
              child: BackdropFilter(
                filter: ImageFilter.blur
                  (sigmaX:10,
                   sigmaY: 10),
                child: Column(
                  children: [
                    SizedBox(height: 16,),
                    Text("300K",
                      style: TextStyle(
                          fontSize: 32,fontWeight: FontWeight.bold),
                         ),


                    SizedBox(height: 16,),
                    Icon(Icons.cloud,size:64,),


                    SizedBox(height: 16,),
                    Text("Rain",style: TextStyle(fontSize: 18),),
                    SizedBox(height: 16,),

                  ],

                ),
              ),
            ),
          ),
        ),


           const SizedBox(height: 20,),


           //weather forecast
           const Text("Weather Forecast",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
           const SizedBox(height: 16,),


           //Scrollable row
           SingleChildScrollView(
              scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 HourlyForecast(
                   time: "03.00",
                   icon: Icons.cloud,
                   weather: "Rain",
                 ),
                 HourlyForecast(
                   time: "04.00",
                   icon: Icons.cloud_sharp,
                   weather: " heavy Rain",
                 ),
                 HourlyForecast(
                   time: "04.00",
                   icon: Icons.sunny,
                   weather: " sunny",
                 ),
                 HourlyForecast(
                   time: "04.00",
                   icon: Icons.sunny,
                   weather: " sunny",
                 ),
                 HourlyForecast(
                   time: "03.00",
                   icon: Icons.cloud,
                   weather: "Rain",
                 ),
                 HourlyForecast(
                   time: "03.00",
                   icon: Icons.cloud,
                   weather: "Rain",
                 ),
                 HourlyForecast(
                   time: "03.00",
                   icon: Icons.cloud,
                   weather: "Rain",
                 ),
                 HourlyForecast(
                   time: "03.00",
                   icon: Icons.cloud,
                   weather: "Rain",
                 ),
                 HourlyForecast(
                   time: "03.00",
                   icon: Icons.cloud,
                   weather: "Rain",
                 ),



               ],
             ),
           ),
           //Additional information
           const SizedBox(height: 26,),
           const Text("Additional information",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
           const SizedBox(height: 16,),
           //icons
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
             additional_info(
               icon: Icons.water_drop,
               label: "Humidity",
               value: '91',
             ),
             additional_info(
               icon: Icons.air,
               label: "Wind Speed",
               value: '7.5',
             ),
             additional_info(
               icon: Icons.beach_access,
               label: "Pressure",
               value: '1000',
             ),

           ],)

         ],
       ),
     ),
   );
  }
}



