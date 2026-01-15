import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scheki/Pages/Inscription.dart';
import 'package:scheki/Pages/Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RedirectionPage extends StatefulWidget {
  const RedirectionPage({super.key});

  @override
  State<RedirectionPage> createState() => _RedirectionPageState();
}

class _RedirectionPageState extends State<RedirectionPage> {

  Future <void> verification() async{
    final perfs=await SharedPreferences.getInstance();
    var nom= await perfs.getString("nom")??"vide";
    var prenom= await perfs.getString("prenom")??"vide";
    if(nom!="vide" && prenom!="vide"){
      print(nom);
      print(prenom);
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Screenpage()), (route)=>false);
    }else{
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>InscriptionPage()), (route)=>false);

    }
  }
  @override
  void initState(){
    super.initState();
    verification();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(

          children: [

          Column(
            children: [
              Container(width: MediaQuery.of(context).size.width *1,),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.7),
                height: MediaQuery.of(context).size.height *0.35,
                width: MediaQuery.of(context).size.width *0.6,
                child: Lottie.asset("assets/animations/01_Finishig Studies.json"),
              )
            ],
          ),
            Column(
              children: [
                Container(width: MediaQuery.of(context).size.width *1,),
                Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.5),
                    child: Text("CHARGEMENT...",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04),))
              ],)
            ],),
      ),
    );
  }
}
