import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String? gender;
class q1 extends StatefulWidget {
  const q1({Key? key}) : super(key: key);

  @override
  State<q1> createState() => _q1State();
}

class _q1State extends State<q1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:SingleChildScrollView(child: Container(


        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.orange])),

        child: Column(

          children: [
            Divider(color: Colors.transparent,height: 150,),


          Directionality(  textDirection: TextDirection.rtl,
          child:Text('اذا كان لديك 7 اقلام وقمت ببيع 3 كم تبقى قلم لديك؟',style: GoogleFonts.almarai(textStyle: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
        ),
            Divider(color: Colors.transparent,height: 5,),
        Directionality(
          textDirection: TextDirection.rtl,

          child: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 5), borderRadius: BorderRadius.all(
                Radius.circular(30.0))
            ),
            child: RadioListTile(
              title: Text("7",style: GoogleFonts.almarai(textStyle: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
              value: "احمر",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ),
        ),
            Divider(color: Colors.transparent,height: 5,),




          Directionality(
            textDirection: TextDirection.rtl,

            child: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 5), borderRadius: BorderRadius.all(
                Radius.circular(30.0))
            ),
            child: RadioListTile(
              title: Text("5",style: GoogleFonts.almarai(textStyle: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
              value: "سماوي",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ),
        ),
            Divider(color: Colors.transparent,height: 10,),


          Directionality(
            textDirection: TextDirection.rtl,

            child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 5), borderRadius: BorderRadius.all(
                    Radius.circular(30.0))
                ),
                child: RadioListTile(
                  title: Text("3",style: GoogleFonts.almarai(textStyle: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                  value: "اسود",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
            ),
            Divider(color: Colors.transparent,height: 10,),


          Directionality(
            textDirection: TextDirection.rtl,
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 5), borderRadius: BorderRadius.all(
                    Radius.circular(30.0))
                ),
                child: RadioListTile(
                  title: Text("4",style: GoogleFonts.almarai(textStyle: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
                  value: "اخضر",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),


              ),
            ),
Icon(Icons.arrow_back),
Divider(height: 300,),

          ],
        ),
      )

        ,),
    );
  }
}
