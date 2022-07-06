import 'package:flutter/material.dart';

final theme_color = Color(0xff5ba598);

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text('Profile',
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.blue,
                      fontFamily: 'Product Sans')),
              Padding(
                padding: EdgeInsets.all(12.0),
              ),
              Hero(
                  tag: 'hero',
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: new Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage("assets/img/prof.png")),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Pradana Aditiya Putra',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Product Sans',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'SKP 19-2 (Siliwangi)',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                    fontFamily: 'Product Sans',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'pradanaaditiya191@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Product Sans',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(32.0),
              ),
              Padding(
                padding: EdgeInsets.all(32.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
