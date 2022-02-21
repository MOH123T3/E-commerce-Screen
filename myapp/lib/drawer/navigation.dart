import 'package:flutter/material.dart';
import 'package:myapp/drawer/MAP.dart';
import 'package:myapp/drawer/call.dart';
import 'package:myapp/drawer/food.dart';
import 'package:myapp/drawer/mail.dart';
import 'package:myapp/drawer/message.dart';
import 'package:myapp/drawer/photos.dart';


class NAvigation extends StatelessWidget{
  @override 
  Widget build (BuildContext context)
  {
    return Container(  
      
      child: Drawer(
     
    child: Container(
      
      color: Colors.white30,
      child: 
    
    ListView(children: [
    
      UserAccountsDrawerHeader(accountName: Text(' mohit'), accountEmail: Text(' 433634@gmail.com',),
      ),
      CircleAvatar( child: Image(image: AssetImage('assets/me.jpg',),height:50,width: 60 ,),)
      ,
      ListTile(leading: Icon(Icons.call,color: Colors.orange,),title: Text(' CALL'),onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> cAll())),),
      ListTile(leading: Icon(Icons.message,color:Colors.yellow),title: Text(' MESSAGE'),onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Messages())),),
      ListTile(leading: Icon(Icons.email,color: Colors.purple,),title:Text('Email'),onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> mail()),), ),
     ListTile(leading: Icon(Icons.photo_album,color: Colors.red),title: Text(' PHOTOS'),onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> phoTO())),),
     ListTile(leading: Icon(Icons.dinner_dining,color: Colors.blueGrey ),title: Text(' FOOD'),onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FOod())),),
     ListTile(leading: Icon(Icons.map,color: Colors.lightGreen ),title: Text(' MAP'),onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> MAp())),),
     ListTile(leading: Icon(Icons.storage_outlined,color: Colors.blue ),title: Text(' Fire Base'),onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Basefire())),),


     
     
    
    ],),
    )
    

  ),
  );
  }
}
