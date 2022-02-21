


import 'package:flutter/material.dart';
import 'package:myapp/drawer/MAP.dart';
import 'package:myapp/scree/home.dart';

class phoTO extends StatelessWidget  {

 @override 
 Widget build (BuildContext context)
 {
   return 
   
   Scaffold(
     
   backgroundColor: Colors.yellow,
    body: 

        Column(
    children: [
      Expanded(
        flex: 3,
        child: 
      Container(
      color: Colors.green,
     )),
      Expanded(
        flex: 4,
        child: Container(
          child: ElevatedButton.icon(onPressed: (){
            _bottomSheet(context);
          }, icon: Icon( Icons.border_bottom), label: Text('BOTTOM')),
          
          color: Colors.purple,))

    ],),);}}


    void _bottomSheet (context){
      showBottomSheet(context: context, builder:(builder){
        return 
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0)),),
                child: Wrap(
                  children: [
                    ListTile(title: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MAp())); 
                    },child:Text('Map') ),
                    leading:Icon(Icons.map_outlined,),
                     
                    ),
                       new ListTile(
              leading: new Container(
                width: 4.0,
                child: Icon(
                  Icons.account_box,
                  color: Colors.blue,
                  size: 24.0,
                ),
              ),

              title: const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ),
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
               )   ],
                )

        );
      });
    }