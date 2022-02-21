import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/drawer/navigation.dart';
import 'package:myapp/scree/bottompages.dart';

class myapp extends StatefulWidget{

  _splashState createState()=>_splashState();
}

class _splashState extends State<myapp>{
@override 
void initState() {
 super.initState();
 Timer(Duration(seconds: 5,),
 
 ()=> Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> home()) )
 );

 }
 Widget build (BuildContext context){
   return Container(
     color: Color.fromARGB(255, 230, 230, 128),

     child: Icon(Icons.android_outlined,color: Colors.green,size: 60,)

  );
 }

}
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
    var pages = [hOme(), fav(),info(),setting()];
    int seleteditems = 0;

  Widget build (BuildContext context)
  {
    return 
       Scaffold(appBar: 
    AppBar(
      backgroundColor: Colors.deepPurpleAccent,
    title: Text('My App') 
  ),
  body:Center(child: pages[seleteditems]),
  drawer: NAvigation(), 
  
  bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.deepPurpleAccent,size: 35,),label: 'HOME',backgroundColor: Colors.red
),
      BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.deepPurpleAccent,size: 35),label: 'FAV',backgroundColor: Colors.green
),
      BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.deepPurpleAccent,size: 35),label: 'ABOUT', backgroundColor: Colors.yellow
),
      BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.deepPurpleAccent,size: 35),label: 'SETTING',backgroundColor: Colors.orange
),
    ],
    type: BottomNavigationBarType.shifting,
    currentIndex: seleteditems ,
   selectedItemColor: Colors.green,
      elevation: 30,
    onTap: (sat){
      setState(() {
        seleteditems = sat;
      });
    }
    
    
    
    
  ),
  

       );
       
  }

  
}
