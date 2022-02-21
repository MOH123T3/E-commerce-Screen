import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class Basefire extends StatefulWidget {
  const Basefire({ Key? key }) : super(key: key);
  @override
  _BasefireState createState() => _BasefireState();
}
class _BasefireState extends State<Basefire> {
  final _form = GlobalKey<FormState>();      
   late String name;
   late String email;
   late String  hous;

  void savedata() async{
    _form.currentState!.save();
  var uri = "https://mydbflutter-default-rtdb.firebaseio.com/"+"Data.json";
  try {
    var jsondata = await http.post(Uri.parse(uri),
    body: jsonEncode({
       'Name': name,
       'Email':email,
       'House':hous
  }));}
   catch (error) {
    throw error;
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: _form,
        child: Container(
          child: Column(children: [
             TextFormField(
               decoration: InputDecoration(hintText: 'name'),
               onSaved: (value){
                 name!=value;
               }),
                  TextFormField(
               decoration: InputDecoration(hintText: 'email'),
               onSaved: (value){
                 email!=value;
               },
             ),
                  TextFormField(
               decoration: InputDecoration(hintText: 'house'),
               onSaved: (value){
                 hous!=value;
               },
             ),

          ]),
        ),
      ),
    );
  }
}