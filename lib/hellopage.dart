import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqtest/quiz.dart';

class hello extends StatefulWidget {
  const hello({Key? key}) : super(key: key);

  @override
  State<hello> createState() => _helloState();
}

class _helloState extends State<hello> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
        home: qu(), );
  }
}


class qu extends StatefulWidget {
  const qu({Key? key}) : super(key: key);

  @override
  State<qu> createState() => _quState();
}

class _quState extends State<qu> {
  @override
  Widget build(BuildContext context) {
    return  Container( decoration: const BoxDecoration(
    gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
    colors: [Colors.purple, Colors.orange])),

    child:   Column(children: [
    Padding(padding: const EdgeInsets.only(top: 100),
    child: Text("مرحبا بك\n في اختبار الذكاء للاطفال  ",
    style: GoogleFonts.almarai(textStyle: TextStyle(
    fontSize: 50,fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,color: Colors.white,), height: 2,
    ),
    textAlign: TextAlign.center,),),
    Divider(height: 40,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Container(
    decoration: new BoxDecoration(boxShadow:
    [BoxShadow( color: Colors.orangeAccent, blurRadius: 10.0,),],),

    child: Card(color: Colors.orangeAccent,

    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white,width: 7),

    borderRadius: BorderRadius.circular(20.0),),

    child: SizedBox(width: 150, height: 150, child: Center(child: Text('ابدا الاختبار',

    style: GoogleFonts.almarai(textStyle: TextStyle(fontWeight: FontWeight.bold,

    fontSize: 25,color: Colors.white),)),),),),



    ),
    Container(
    decoration: new BoxDecoration(boxShadow:
    [BoxShadow( color: Colors.purple, blurRadius: 10.0,),],),
    child:SizedBox(
    width: 150.0,
    height: 150.0,
    child:
    ElevatedButton(onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>hello()));},
    child: Text("اختبار تجريبي", style: GoogleFonts.almarai(fontSize: 30)),
    style: ElevatedButton.styleFrom(
    primary: Colors.deepPurpleAccent[100],)
    ),
    )




    /*
                Card(color: Colors.purple[200],
                  shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white,width: 7),
                    borderRadius: BorderRadius.circular(20.0),
                  ),child: SizedBox(width: 150, height: 150, child: Center(child: Text(' اختبار تجريبي',

                    style: GoogleFonts.almarai(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,

                        color: Colors.white,height: 2),

                    ),textAlign: TextAlign.center,)),),),*/

    ),      ],  ),    ],   ), );

  }
}