import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';

class MeteoPage extends StatefulWidget {
  const MeteoPage({super.key});

  @override
  State<MeteoPage> createState() => _MeteoPageState();
}



class _MeteoPageState extends State<MeteoPage> {

  var message;
  Future <void> meteo()async{
    final url=Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=7.69&lon=-5.03&appid=d27832cd69d312e27c69cb3dc389a6d0&units=metric&lang=fr");
    var message1=await http.get(url);
setState(() {
  message=jsonDecode(message1.body);
});
    print(message["main"]);
  }
  @override
  void initState(){
    super.initState();
    meteo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(

        children: [
          Image.asset("assets/images/Gemini_Generated_Image_nyvxktnyvxktnyvx.png",fit: BoxFit.cover,height: MediaQuery.of(context).size.height *1,width:MediaQuery.of(context).size.width *1 ,),

          Container(height: MediaQuery.of(context).size.height *1,width:MediaQuery.of(context).size.width *1 ,color: Colors.black45,),
          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height *0.6 ),
            height: MediaQuery.of(context).size.height *0.4,width:MediaQuery.of(context).size.width *1,
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(MediaQuery.of(context).size.width *0.2),topRight: Radius.circular(MediaQuery.of(context).size.width *0.2))
          ),
          ),
          Column(
            children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              width: MediaQuery.of(context).size.width *1,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.06,left: MediaQuery.of(context).size.width *0.02),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),),

              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width *0.055),
                alignment: AlignmentDirectional.topStart,
                width: MediaQuery.of(context).size.width *1,
                child: Text("Bouake",style: TextStyle(color: Colors.white54,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.1),),),

              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width *0.055),
                alignment: AlignmentDirectional.topStart,
                width: MediaQuery.of(context).size.width *1,
                child: Text(message["main"]["temp"].toString()+" °C",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.15),),)
              ,
              SizedBox(height: MediaQuery.of(context).size.height *0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  child: Lottie.asset("assets/animations/Windblow.json",height: MediaQuery.of(context).size.height *0.2,width: MediaQuery.of(context).size.height *0.2),
                  
                ),
                Container(child: Text(message["wind"]["speed"].toString()+" m/s",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06)),)
              ],)
          ],)
          ],),
    );
  }
}
