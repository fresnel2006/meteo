import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scheki/Pages/Meteo.dart';
import 'package:scheki/Pages/Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  final nom=TextEditingController();
  final prenom=TextEditingController();
  bool couleur_bordure1=true;
  bool couleur_bordure2=true;

  Future<void> verification_saisie() async {
    if (nom.text.trim().isEmpty){
      setState(() {
        couleur_bordure1=false;
      });
    }
    if(prenom.text.trim().isEmpty){
      setState(() {
        couleur_bordure2=false;
      });
    }
    if (nom.text.trim().isNotEmpty){
      setState(() {
        couleur_bordure1=true;
      });
    }
    if(prenom.text.trim().isNotEmpty){
      setState(() {
        couleur_bordure2=true;
      });
    }
    if(nom.text.trim().isNotEmpty && prenom.text.trim().isNotEmpty){
      await sauvegarder();
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>Screenpage()), (route)=>false);

    }
  }
  Future <void> sauvegarder() async{
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("nom", nom.text);
      await prefs.setString("prenom", prenom.text);
      print(nom.text);
      print(prenom.text);
    }catch(e){
      print("Erreur sur la sauvegarde");
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(width: MediaQuery.of(context).size.width *1,),
            Container(
              height: MediaQuery.of(context).size.height *0.4,
              width: MediaQuery.of(context).size.width *0.8,
              child: Lottie.asset("assets/animations/Exams Preparation..json"),),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xFF51CD96),width: MediaQuery.of(context).size.width *0.005))
              ),
              child: Text("BIENVENUE ",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.03,),
            Container(
              height: MediaQuery.of(context).size.height *0.072,
              width: MediaQuery.of(context).size.width *0.8,
              child: TextFormField(
                controller: nom,
                cursorColor:Color(0xFF51CD96),
                style: TextStyle(color: Color(0xFF51CD96),fontFamily: "Poppins"),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: couleur_bordure1?Colors.black:Colors.red,width: MediaQuery.of(context).size.width *0.0045),
                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                  ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: couleur_bordure1?Colors.black:Colors.red,width: MediaQuery.of(context).size.width *0.0045),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                    ),
label: Text("Nom",style: TextStyle(fontFamily: "Poppins",color: Colors.black),),
prefixIcon: Icon(Icons.numbers,color: Color(0xFF51CD96),)
              ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.03,),
            Container(
              height: MediaQuery.of(context).size.height *0.072,
              width: MediaQuery.of(context).size.width *0.8,
              child: TextFormField(

                cursorColor:Color(0xFF51CD96),
                style: TextStyle(color: Color(0xFF51CD96),fontFamily: "Poppins"),
                controller: prenom,
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.pen,color: Color(0xFF51CD96),),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: couleur_bordure2?Colors.black:Colors.red,width: MediaQuery.of(context).size.width *0.0045),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: couleur_bordure2?Colors.black:Colors.red,width: MediaQuery.of(context).size.width *0.0045),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                    ),
                    label: Text("Prénom",style: TextStyle(fontFamily: "Poppins",color: Colors.black))
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.045,),
            GestureDetector(
                onTap: (){
                  verification_saisie();
                },
                child: Container(
              alignment: AlignmentGeometry.center,
              height: MediaQuery.of(context).size.height *0.06,
            width: MediaQuery.of(context).size.height *0.14,

            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              color: Color(0xFFCEF7E6),
              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
            ),
            child: Text("S'INSCRIRE",style: TextStyle(fontFamily: "Poppins",color: Colors.black87,fontSize: MediaQuery.of(context).size.width *0.043)),
            )

            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.045,),

            Container(child: Text("Une petite appli pensée pour vous, pour connaître la météo et faire tes calculs de moyenne en toute simplicité.",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",color: Colors.black54),),),

          ],
        ),
      ),
    );
  }
}
