import 'package:flutter/material.dart';
import 'package:my_store_flutter/profile.dart';
import 'package:my_store_flutter/readdata.dart';

class Home extends StatefulWidget{
// const MyApp({ Key? key }) : super(key: key);

@override
_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            body: TabBarView(children: [
              ReadData(),
              AccountInfo()
            ]),
            bottomNavigationBar: Material(
              color: Colors.blueAccent,
              child: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.storage),
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                ),
              ]),
            )
          )),
    );
  }
}