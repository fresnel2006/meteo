import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scheki/Pages/Moyenne.dart';
import 'package:scheki/Pages/Screen.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height *0.04,),
          Lottie.asset("assets/animations/Exams Preparation..json",width:MediaQuery.of(context).size.width *1,height: MediaQuery.of(context).size.height *0.31 ),

            SizedBox(height: MediaQuery.of(context).size.height *0.04,),
            GestureDetector(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Screenpage()), (route)=>false);
              },
              child: Container(
alignment: Alignment.center,
              decoration: BoxDecoration(

                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.5))),
              width: MediaQuery.of(context).size.width *0.5,
              height: MediaQuery.of(context).size.height *0.07,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.cloud,color: Colors.black,),
                  SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                  Text("Meteo",style: TextStyle(color:Color(0xFF51CD96),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045),),

                ],
              ),
            ),),
            SizedBox(height: MediaQuery.of(context).size.height *0.04,),
            GestureDetector(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MoyennePage()), (route)=>false);
              },
              child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(

                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.5))),
              width: MediaQuery.of(context).size.width *0.5,
              height: MediaQuery.of(context).size.height *0.07,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calculate_outlined,color: Colors.black,),
                  SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                  Text("Ecole",style: TextStyle(color:Color(0xFF51CD96),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045),),
                ],
              ),
            ),),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.135),
              child: Lottie.asset("assets/animations/01_Finishig Studies.json"),
            )
        ],),
      ),
    );
  }
}
