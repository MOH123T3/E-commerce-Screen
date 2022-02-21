import 'package:flutter/material.dart';
import 'package:myapp/scree/home.dart';


class MyApp extends StatelessWidget {

  @override 

Widget build (BuildContext context)
{
  return MaterialApp(
    theme: ThemeData(primaryColor: Colors.deepOrange),

  debugShowCheckedModeBanner: false,

  home:  myapp ());
}
}