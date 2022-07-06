import 'package:flutter/material.dart';
import 'package:my_store_flutter/hallogin.dart';
import 'package:my_store_flutter/halregister.dart';
import 'package:my_store_flutter/homescr.dart';
import 'package:my_store_flutter/profile.dart';
import 'package:my_store_flutter/readdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
// const MyApp({ Key? key }) : super(key: key);

@override
_MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: halLogin()
    );
  }
}