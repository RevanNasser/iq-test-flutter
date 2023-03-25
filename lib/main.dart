import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqtest/hellopage.dart';
import 'package:iqtest/rigestre.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page(),); }
}
class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: const BoxDecoration(
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
                [BoxShadow( color: Colors.purple, blurRadius: 25.0,),],),
                child:SizedBox(
    width: 150.0,
    height: 150.0,
    child:
    ElevatedButton(onPressed: (){
 Navigator.push(context,MaterialPageRoute(builder: (context)=>reg()));},
 child: Text("سجل الان",textAlign: TextAlign.center, style: GoogleFonts.almarai(fontSize: 37,fontWeight: FontWeight.bold)),
 style: ButtonStyle(  backgroundColor: MaterialStateProperty.all(Colors.purpleAccent[100]),
   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder( borderRadius: BorderRadius.circular(40.0),side: BorderSide(color: Colors.purpleAccent,),),


    ),), ),   ) ),      ],  ),    ],   ), );

  }
}
