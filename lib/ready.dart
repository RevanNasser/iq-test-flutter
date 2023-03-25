import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqtest/quiz.dart';
import 'hellopage.dart';

class ready extends StatefulWidget {
  const ready({Key? key}) : super(key: key);

  @override
  State<ready> createState() => _readyState();
}

class _readyState extends State<ready> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: red(), );
  }
}


class red extends StatefulWidget {
  const red({Key? key}) : super(key: key);

  @override
  State<red> createState() => _redState();
}

class _redState extends State<red> {
  @override
  Widget build(BuildContext context) {
    return  Container( decoration: const BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.orange])),

      child:   Column(children: [
        Padding(padding: const EdgeInsets.only(top: 100),
          child: Text("هل أنت مستعد للإختبار ؟ \n اضغط للبدء  ",
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
    [BoxShadow( color: Colors.purple, blurRadius: 25.0,),],),
    child:SizedBox(
    width: 150.0,
    height: 150.0,
    child:
    ElevatedButton(onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>quize()));},
    child: Text("ابدأ ",textAlign: TextAlign.center,
        style: GoogleFonts.almarai(fontSize: 37,fontWeight: FontWeight.bold)),
    style: ButtonStyle(  backgroundColor: MaterialStateProperty.all(Colors.purpleAccent[100]),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder( borderRadius: BorderRadius.circular(40.0),
    side: BorderSide(color: Colors.purpleAccent,),),




    ),),),),
    )
    ],

    ),
 ]));

  }
}