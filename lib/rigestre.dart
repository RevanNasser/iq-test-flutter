import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqtest/login.dart';
import 'package:iqtest/quiz.dart';
import 'package:iqtest/qustion1.dart';
import 'package:iqtest/ready.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const reg());
}

String? gender;
class reg extends StatefulWidget {
  const reg({Key? key}) : super(key: key);

  @override
  State<reg> createState() => _regState();
}
class _regState extends State<reg> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:ri());
  }
}

class ri extends StatefulWidget {
  const ri({Key? key}) : super(key: key);

  @override
  State<ri> createState() => _riState();
}
class _riState extends State<ri> {
  final auth=FirebaseAuth.instance;
  late  String _email;
  late String _password;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
late String errorMessage= " ";


    @override
    Widget build(BuildContext context) {
      User?user=FirebaseAuth.instance.currentUser;
      return
        Directionality( // add this
          textDirection: TextDirection.rtl, // set this property
          child:
          Scaffold(
            body: SingleChildScrollView(
              child: Container(decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft, end: Alignment.bottomRight,
                      colors: [Colors.purple, Colors.orange])),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text('تسجيل حساب جديد',
                          style: GoogleFonts.almarai(textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.orangeAccent),)),),
                    Padding(padding: EdgeInsets.only(top: 50),

                      child: SizedBox(width: 300,
                        child: Card(child: TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(

                                borderSide: BorderSide(
                                    width: 4, color: Colors.amberAccent),
                              ),
                              hintText: 'اسم المستخدم',
                              labelText: "اسم المستخدم",
                              labelStyle: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent)
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
                          // controller: _password,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,

                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 4, color: Colors.amberAccent),
                              ),
                              hintText: 'ادخل كلمة المرور',
                              labelText: "كلمة المرور",
                              labelStyle: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent)
                          ),
                        ),
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 30),
                      child: SizedBox(width: 300,
                        child: Card(child: TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 4, color: Colors.amberAccent),
                              ),
                              hintText: 'تاكيد كلمة المرو',
                              labelText: "تاكيد كلمة المرور",
                              labelStyle: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent,)
                          ),
                        ),
                        ),
                      ),
                    ),


                    Padding(padding: EdgeInsets.only(top: 30),
                      child: SizedBox(width: 300,
                        child: Card(child: TextField(
                          onChanged: (Value){
                            _email=Value;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 4, color: Colors.amberAccent),
                              ),
                              hintText: 'aa@gmail.com',
                              labelText: "البريد الإلكتروني",
                              labelStyle: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent)
                          ),
                        ),
                        ),
                      ),
                    ),
Center(child: Text(errorMessage,style: GoogleFonts.almarai(textStyle:TextStyle( fontSize: 20,
    color: Colors.white


))
  ,),),
                    Container(
                      padding: EdgeInsets.all(20),
                      child:
                      Column(
                        children: [

                          Directionality(textDirection: TextDirection.rtl,
                            child: Text('من المستخدم؟',
                                style: GoogleFonts.almarai(textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),)),
                          ),
                          RadioListTile(
                            title: Text("طفل",
                                style: GoogleFonts.almarai(textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),)),
                            value: "طفل",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),

                          RadioListTile(
                            title: Text("احد الوالدين",
                                style: GoogleFonts.almarai(textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),)),
                            value: "اب",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(onPressed: ()async{


                                  try {
                                    var user = await auth.createUserWithEmailAndPassword(
                                        email: _email, password: _password);
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => ready()));
                                    errorMessage='';
                                  }
      on FirebaseException catch(e){
      errorMessage= e.message!;


      }},      //                               if (e.code == 'weak-password') {
      //                                 print('كلمة المرور ضعيفة جداً');
      //                               } else if (e.code == 'email-already-in-use') {
      //                                 print("الحساب موجود بالفعل لهذا البريد الإلكتروني.");
      //                               }
      // if (e.code == 'user-not-found') {
      // print('No user found for that email.');
      // } else if (e.code == 'wrong-password') {
      // print('Wrong password provided for that user.');
      // }
      // }
      //                           },

                                    child: Text("تسجيل",
                                        style: GoogleFonts.almarai(
                                            fontSize: 20)),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.purpleAccent[100],)
                                ),
                                ElevatedButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => lo()));
                                },
                                    child: Text("لدي حساب بالفعل",
                                        style: GoogleFonts.almarai(
                                            fontSize: 20)),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.purpleAccent[100],)
                                ),

                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                  ],),
              ),),),)
      ;
    }
  }

