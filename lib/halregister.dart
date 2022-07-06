import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_store_flutter/readdata.dart';

class AddUser extends StatefulWidget {
  // const AddData({Key? key }) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  void addUser(){
    var url = "http://mystorednd.orgfree.com/aduser.php";
    http.post(Uri.parse(url), body: {
      "username": controllerUsername.text,
      "password": controllerPassword.text,
    });
  }

// @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Tambah User"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextField(controller: controllerUsername,
            decoration: InputDecoration(
              hintText: "Username", labelText: "Username"),
            ),
            TextField(controller: controllerPassword,
            decoration: InputDecoration(
              hintText: "Password", labelText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                addUser();
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (BuildContext context) => ReadData()));
              }, 
              child: Text("Tambah User"),
              ),
        ],
      ),
    ),
  );
 }
}