import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scheki/Pages/Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoyennePage extends StatefulWidget {
  const MoyennePage({super.key});

  @override
  State<MoyennePage> createState() => _MoyennePageState();
}

class _MoyennePageState extends State<MoyennePage> {

  var matiere=["Anglais","Français","Mathématique","EDHC","SVT","Physique-Chimie","EPS","Allemand","Conduite"];


  var nom;
  Future <void> charger_donnee() async{
    final prefs=await SharedPreferences.getInstance();
    setState(() {
      nom=prefs.getString("nom")??"";
    });
    print(nom);
  }

  @override
  void initState(){
    super.initState();
    charger_donnee();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
            children: [
Image.asset("assets/images/image de fond calcule moyenne.jpg",fit: BoxFit.cover,height: MediaQuery.of(context).size.height *1,width:MediaQuery.of(context).size.width *1),
              Container(width:MediaQuery.of(context).size.width *1 ,
                height: MediaQuery.of(context).size.height *1,
              color: Colors.black45,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: MediaQuery.of(context).size.width *0.008),
                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                ),
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height *0.12,left: MediaQuery.of(context).size.width *0.04 ),
                child: IconButton(onPressed: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Screenpage()), (route)=>false);
                }, icon: Icon(CupertinoIcons.arrow_turn_up_left,color: Colors.white,)),
              ),
              Column(
                children: [
                  Container(width: MediaQuery.of(context).size.width *1,),
SizedBox(height: MediaQuery.of(context).size.height *0.07,),
Container(
  alignment: Alignment.center,
  height: MediaQuery.of(context).size.height *0.15,
  width: MediaQuery.of(context).size.width *0.6,
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.white,width: MediaQuery.of(context).size.width *0.008
    ),
    color: Colors.white60,
    borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.1))
  ),
  
  child: Text("Moyenne\n17,00",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.055),),
),
                  SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
Text("matière",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70)
                        ),
                        width: MediaQuery.of(context).size.width *0.5,)
                    ],),

                  Container(
                    height: MediaQuery.of(context).size.height *0.65,
                    width:MediaQuery.of(context).size.width *0.9 ,
                    child: ListView.builder(

                      itemCount:matiere.length,itemBuilder: (context, index) =>Container(
                      width: MediaQuery.of(context).size.width *0.85,
                      child:
                      ListTile(
                          leading: Lottie.asset("assets/animations/Calculate.json"),
                          trailing: Icon(CupertinoIcons.arrow_turn_down_right,color: Colors.white,),
                          title: Text(matiere[index],style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize:MediaQuery.of(context).size.width *0.05 )),
                          subtitle: Column(
                            children: [
                              Container(
                                width:MediaQuery.of(context).size.width *1,
                                child:Text("Moyenne : ",style: TextStyle(fontFamily: "Poppins",color: Colors.white70,fontSize:MediaQuery.of(context).size.width *0.04),), )
                              ,Container(
                                width:MediaQuery.of(context).size.width *1,
                                child:Text("Coefficeint : ",style: TextStyle(fontFamily: "Poppins",color: Colors.white70,fontSize:MediaQuery.of(context).size.width *0.04),), )

                            ],
                          ))

                  ) ,)
                  )
                ],)
        ],
      ),)
    );
  }
}
