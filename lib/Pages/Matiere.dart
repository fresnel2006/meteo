import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatierePage extends StatefulWidget {
  const MatierePage({super.key});

  @override
  State<MatierePage> createState() => _MatierePageState();
}

class _MatierePageState extends State<MatierePage> {
  var anglais=[];
  var francais=[];
  var mathematique=[];
  var edhc=[];
  var svt=[];
  var physique_chime=[];
  var eps=[];
  var allemand=[];
  var conduite=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(child: Image.asset("assets/images/image de fond matiere.jpg",height: MediaQuery.of(context).size.height *1,width:MediaQuery.of(context).size.width *1 ,fit: BoxFit.cover,),),
            Container(
                height: MediaQuery.of(context).size.height *1,
                width:MediaQuery.of(context).size.width *1,
                color: Colors.black54,
            ),
            Column(
              children: [
Container(
  alignment: Alignment.center,
    height: MediaQuery.of(context).size.height *0.26,
  width:MediaQuery.of(context).size.width *1,
  decoration: BoxDecoration(
      color: Colors.white30,
    border: Border(bottom: BorderSide(color: Colors.white,width:MediaQuery.of(context).size.width *0.065 )),
    borderRadius: BorderRadius.only(bottomRight: Radius.circular(MediaQuery.of(context).size.width *0.2),bottomLeft: Radius.circular(MediaQuery.of(context).size.width *0.2))
  ),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

  Text("Moyenne",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.075)),
    Text("15,00",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.065)),
   ],)
),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
Container(
  height: MediaQuery.of(context).size.height *0.7,
   child: ListView.builder(itemCount:10,itemBuilder: (context, index) => ListTile(
       leading: Container(
         alignment: Alignment.center,
         height: MediaQuery.of(context).size.height *0.05,
         width:MediaQuery.of(context).size.height *0.09 ,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1)),
         ),
         child: Text("19,55",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize:MediaQuery.of(context).size.width *0.07)),
       ),title: Text("Notes 1",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize:MediaQuery.of(context).size.width *0.055 )),
       trailing: Icon(CupertinoIcons.delete,color: Colors.white,),

       subtitle: Column(
         children: [
           Container(
             width:MediaQuery.of(context).size.width *1,
             child:Text("Coefficeint : ",style: TextStyle(fontFamily: "Poppins",color: Colors.white70,fontSize:MediaQuery.of(context).size.width *0.04),), )

         ],
       )
   ),),
)

              ],
            ),
Container(
  alignment: Alignment.centerRight,
  height: MediaQuery.of(context).size.height *0.2,
  width:MediaQuery.of(context).size.width *1,
  child: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_rounded,color: Colors.white,size: MediaQuery.of(context).size.width *0.09,)),
),
            Container(
              alignment: Alignment.centerLeft,
              height: MediaQuery.of(context).size.height *0.2,
              width:MediaQuery.of(context).size.width *1,
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(CupertinoIcons.arrow_turn_up_left,color: Colors.white,size: MediaQuery.of(context).size.width *0.09,)),
            )

          ],)
      ),
    );
  }
}
