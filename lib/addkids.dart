
import 'package:flutter/material.dart';
class addkid extends StatefulWidget {
  const addkid({Key? key}) : super(key: key);

  @override
  State<addkid> createState() => _addkidState();
}

class _addkidState extends State<addkid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: add(),
    );
  }
}


class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);
 @override
  State<add> createState() => _addState();}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(children: [
        Card(child: Text("اضف الابن الاول",

        ),),
      ],),

    );
  }
}
