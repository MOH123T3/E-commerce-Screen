import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class mail extends StatefulWidget {

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<mail> {
  var count = 0;
  late List data;
 List idusr = [];
 List titleusr = [];
 List urlusr = [];
 List thumusr = [];
 void initState(){
   super.initState();
   fatchapi();
 }
 Future<String>fatchapi()async{
   var jsondata = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
   var fatchapi = jsonDecode(jsondata.body);
   setState(() {
     data = fatchapi;
     data.forEach((element) { 
       idusr.add(element['id'].toString());
       titleusr.add(element['title'].toString());
       urlusr.add(element['url']);
       thumusr.add(element['thumbnailUrl']);
       count++;
      
            });
   });
   return 'succes';
 }
  @override
       
  Widget build (BuildContext context)
  {
    return Scaffold(
     
     appBar: AppBar(
       title: Text(' Json API'),
       backgroundColor: Colors.purple,
     ),
      body: ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context , int index){
          return 
             Column(
             children: [
             Text(idusr[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),), 
             Text(urlusr[index],style: TextStyle(fontSize: 20,color: Colors.green),),
             Text(titleusr[index]),
             Image.network(thumusr[index],),
             Icon(Icons.face,color: Colors.red,)
           ], 
          );
        })  
    );
  }} 
  
