import 'dart:ui';

import'package:flutter/material.dart';
class HourlyForecast extends StatelessWidget{
  final String time;
  final String weather;
  final IconData icon;

  const HourlyForecast(
  {super.key, required this.time, required this.weather, required this.icon


});
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 120,
        child: Card(
          elevation: 6,
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
                  SizedBox(height: 12,),
                  Text(time,
                    style: TextStyle(
                        fontSize:14,fontWeight: FontWeight.w500),
                  ),


                  SizedBox(height: 16,),
                  Icon(icon,size:34,),


                  SizedBox(height: 16,),
                  Text(weather,style: TextStyle(fontSize: 12),),
                  SizedBox(height: 16,),

                ],

              ),
            ),
          ),
        ),
      );
  }

}