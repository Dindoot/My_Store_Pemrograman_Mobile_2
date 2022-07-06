import 'package:flutter/material.dart';
import 'package:my_store_flutter/halregister.dart';
import 'package:my_store_flutter/homescr.dart';
import 'package:my_store_flutter/readdata.dart';

class halLogin extends StatefulWidget {
  const halLogin({Key? key}) : super(key: key);

  @override
  State<halLogin> createState() => _halLoginState();
}

class _halLoginState extends State<halLogin> {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              children: [
                Image.network("https://i.ytimg.com/vi/e7CvkD0hC1A/maxresdefault.jpg"),
                TextField(
                  controller: controllerUsername,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.people),
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "Masukkan Username")),
                  SizedBox(height: 8,),
                  TextField(
                  controller: controllerPassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Masukkan Password")),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (controllerUsername.text.toString() == 'admin' &&
                            controllerPassword.text.toString() == 'admin'){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home()));
                            }else{}
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => AddUser()));
                        },
                        child: Text("Register")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}