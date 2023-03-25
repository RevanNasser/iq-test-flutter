import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqtest/quiz.dart';
import 'package:iqtest/ready.dart';
import 'package:iqtest/rigestre.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const login());
}

String? gender;
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
    home:lo());
  }
}

class lo extends StatefulWidget {
  const lo({Key? key}) : super(key: key);

  @override
  State<lo> createState() => _loState();
}

class _loState extends State<lo> {
  final auth=FirebaseAuth.instance;
  late  String _email;
  late String _password;
  late String errorMessage= " ";

  @override
  Widget build(BuildContext context) {
    User?user=FirebaseAuth.instance.currentUser;
    return Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child:
        Scaffold(
          appBar: AppBar(title: Text("تسجيل دخول"),backgroundColor: Colors.purpleAccent[100],

          actions: <Widget>[

          IconButton(
          icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ready()));
            // do something
          },
        ),]
            ),
          body:SingleChildScrollView(
            child: Column(
              children:[
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text('تسجيل دخول',
                      style: GoogleFonts.almarai(textStyle: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 30,color: Colors.orangeAccent),)),),
                Padding(padding: EdgeInsets.only(top: 50),

                  child: SizedBox(width: 300,
                    child: Card(child: TextField(
                      onChanged: (Value){
                        _email=Value;
                      },
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 4, color: Colors.amberAccent),
                          ),
                          hintText: 'البريد الإلكتروني',labelText: "البريد الإلكتروني ",
                          labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orangeAccent)
                      ),
                    ),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 30),
                  child: SizedBox(width: 300,
                    child: Card(child: TextField(
                      onChanged: (Value){
                        _password=Value;
                        },
                      decoration: InputDecoration( icon: new Icon(Icons.password_rounded),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 4, color: Colors.amberAccent),
                          ),
                          hintText: 'ادخل كلمة المرور',labelText: "كلمة المرور",
                          labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orangeAccent)

                      ),
                    ),
                    ),
                  ),
                   ),
                Center(child: Text(errorMessage,style: GoogleFonts.almarai(textStyle:TextStyle( fontSize: 20,
                    color: Colors.black)
                ))),
         Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[

                            ElevatedButton(onPressed: ()async{
                              try {
                                var user = await auth
                                    .signInWithEmailAndPassword(
                                    email: _email, password: _password);
                                if (user!=null) {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => ready()));
                                  errorMessage='';
                                }
                              }
                              on FirebaseException catch(e){
                                errorMessage= e.message!;
                              }
                              Icon(  Icons.download, size: 24.0,);
                              }, child: Text("تسجيل", style: GoogleFonts.almarai(fontSize: 20)),
                                style: ElevatedButton.styleFrom(
                              primary: Colors.purpleAccent[100],)

                            ),


                          ],
                        ),

                      ),
   ],
                  ),
                ),
          ),
          );
  }
}
