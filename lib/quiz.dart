
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqtest/qustion1.dart';
import 'package:iqtest/rigestre.dart';


class quize extends StatefulWidget {
  const quize({Key? key}) : super(key: key);

  @override
  State<quize> createState() => _quizeState();
}

class _quizeState extends State<quize> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       home: Directionality(     textDirection: TextDirection.rtl, // set this property

         child: Scaffold(

          appBar: AppBar(title: Text("الاسئله", style: GoogleFonts.almarai(textStyle: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
            backgroundColor: Colors.purpleAccent[100],


    ),


           body: Container(
               color: Colors.purpleAccent[100],
              child: GridView.count(crossAxisCount: 3,mainAxisSpacing: 10,children: [
             /*    Container(child: ElevatedButton(onPressed: (){
           Navigator.push(context,MaterialPageRoute(builder: (context)=>qu()));},
                   child: null,),),*/

                GestureDetector(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>q1()));
                },
                      child: Card(child: Icon(Icons.lock_open,color: Colors.green,size: 80,),

                      ),
                    ),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                    Card(child: Icon(Icons.lock,size: 80,),),
                  ],)



            ),
         ),
       ),

    );
  }
}
