import 'package:flutter/material.dart';
import 'package:myapp/drawer/navigation.dart';

class Messages extends StatelessWidget{
  
   @override
  Widget build (BuildContext context)
  {
     return   DefaultTabController(length: 4,child: 
     Scaffold
    (appBar: AppBar(
      backgroundColor: Colors.deepOrange,
      title: Text(' MESSAGE'),
      bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.call,color: Colors.black,),
         text: 'Call',
         ),
         Tab(icon: Icon(Icons.message,color: Colors.black),
         text: 'Message',
         ),
         Tab(icon: Icon(Icons.ring_volume,color: Colors.black),
         text: 'Alert',),
          Tab(icon: Icon(Icons.chat,color: Colors.black),
         text: 'Chat',),
     

      ]
      
      ),
    ),
    body: TabBarView(children: [

      first(),
     second(),
      third(),
      four(),
      

    ],)
    )
    );
  }
}
class  first  extends StatelessWidget {
  @override
   var age = TextEditingController();
 var email = TextEditingController();
 var mob = TextEditingController();
 var address =TextEditingController();
   
 _shoname(BuildContext context){
  return showDialog(context: context, builder: (n){
    return AlertDialog(
      actions: [
       ElevatedButton(onPressed: (){
        print(" AGE ${age.text}");
        print(" EMAIL ${email.text}");
        print(" MOBILE ${mob.text}");
        print("ADDRESS ${address.text}");},

        child: Text('SAVE'), ),

       ElevatedButton(onPressed: (){
         Navigator.pop(context);
       }, child: Text('cancel'))],
      content:SingleChildScrollView(child: Column(
        children: [
          TextField(
          controller: age,
          decoration: InputDecoration(hintText: 'what is your AGE ?',label: Icon(Icons.person_add_alt_1_outlined)),
        ),   TextField(
          controller: email,
          decoration: InputDecoration(hintText: 'your EMAIL ?',label: Text('abc@gamil.com')),
        ),   TextField(
          controller: mob,
          decoration: InputDecoration(hintText: 'your MOBILE ?',label: Icon(Icons.mobile_off)),
        ),   TextField(
          controller: address,
          decoration: InputDecoration(hintText: ' your ADDRESS ?',label: Icon(Icons.home_max_sharp,
        )))],))); });} 

  Widget build (BuildContext context)
  {
    return Center( child:Column(
      children: [
        Container(
          color: Colors.deepOrangeAccent,
          padding: EdgeInsets.all(70),
          child: Column(
            children: [
           ElevatedButton(onPressed: (){
          _shoname(context);},
 child: Icon(Icons.search_rounded))
        ],
          ),)], ) );} }
class second extends StatelessWidget{
  @override 

  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();

_alertper(BuildContext context){
  return showDialog(context: context,
   barrierColor: Colors.red,
   barrierDismissible: true,
  
   builder:(p){
    
    return AlertDialog(
      content: SingleChildScrollView(child: 
      Column(
        children: [
        TextField(
          controller: a,
          decoration: InputDecoration(label: Text('size'),
          hintText: 'size ?'          ),),
        TextField(
          controller: b,
          decoration: InputDecoration(label:Text('lenght'),
          hintText: 'lenght ?' ) ),
        TextField(
          controller: c,
          decoration: InputDecoration(label: Text('hight'),
          hintText: 'hight ?'
          ),
        )],)),
        backgroundColor: Colors.purpleAccent,
      actions: [
        ElevatedButton(onPressed: ()
        {
          print("size ${a.text}");
          print("legnth ${b.text}");
          print("hight ${c.text}");
 
        },
         child: Text('DONE')),
         ElevatedButton(onPressed: (){
         Navigator.pop(context);
       }, child: Text('cancel'))
      ],
    );
  });
}
  Widget build (BuildContext context)
  {
    return Scaffold(body: 
    
    
    Column(
      
      children: [
        Container(
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            color: Colors.cyan 
          ),
        child: Column(
          children: [
             Icon(Icons.message,size: 40,),
        Text('MESSAGE',style: TextStyle(fontSize: 30),),


        ElevatedButton(onPressed: (){
          _alertper(context);
        }, child: Text('press here'))
          ],
        ),
          
        
        
       
    ),
      
      ],
     ),
     
     );
  }
}
class  third extends StatelessWidget{
  @override 
  Widget build (BuildContext context)
  {
    return Scaffold(body: 
    
    
    Column(
      
      children: [
        Container(
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            color: Colors.orange
          ),
        child: Column(
          children: [
             Icon(Icons.ring_volume,size: 40,),
        Text('ALERT',style: TextStyle(fontSize: 30),)
          ],
        ),
          
        
        
       
    ),
      
      ],
     ));
  }
}
class four extends StatelessWidget{
  @override 
  Widget build (BuildContext context)
  {
    return Scaffold(body: 
    
    
    Column(
      
      children: [
        Container(
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            color: Colors.purple 
          ),
        child: Column(
          children: [
             Icon(Icons.chat,size: 40,),
        Text('CHAT',style: TextStyle(fontSize: 30),)
          ],
        ), 
    )
      ],
     ));
  }
}



