
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
// flutter run --no-sound-null-safety
class cAll extends StatelessWidget{
 @override
 TextEditingController textEditingController = TextEditingController();

 Widget build (BuildContext context){
   return Scaffold(
     appBar: AppBar(title: Text('Phone Call'),),
     body: Column(children: [
       Container(
         padding: EdgeInsets.all(20),
         margin: EdgeInsets.all(64),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
         child: TextFormField(
        keyboardType: TextInputType.phone,cursorColor: Colors.red,
         controller: textEditingController,
         onSaved: (Phonenumber){
           textEditingController.text = Phonenumber !; },)),

           Container(
             margin: EdgeInsets.all(50),
             
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.black ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
             TextButton(onPressed: (){ 
             call(textEditingController.text);
           }, child:Icon(Icons.call,size: 50,color: Colors.purple,)),
              TextButton(onPressed: (){
               launcher(textEditingController.text);
           }, child: Icon(Icons.keyboard,size: 50,color: Colors.purple,))
               ],
             ),
           )  
     ],),
   );
 }
}

call (String Phonenumber) async{
  String ? number = Phonenumber;
    await FlutterPhoneDirectCaller.callNumber(number);
    print('funtion called $number');
}

launcher (String Phonenumber) async{
  String url = 'tel:' + Phonenumber;
  if(await canLaunch(url))
  {
    await launch(url);

  }
  else {
    throw  'could not launch $url';
  }
}

