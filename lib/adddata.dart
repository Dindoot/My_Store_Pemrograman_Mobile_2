import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_store_flutter/readdata.dart';

class AddData extends StatefulWidget {
  // const AddData({Key? key }) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerCode = TextEditingController();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPrice = TextEditingController();
  TextEditingController controllerStock = TextEditingController();

  void addData(){
    var url = "http://mystorednd.orgfree.com/addata.php";
    http.post(Uri.parse(url), body: {
      "itemcode": controllerCode.text,
      "itemname": controllerName.text,
      "price": controllerPrice.text,
      "stock": controllerStock.text,
    });
  }

// @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Add Data"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextField(controller: controllerCode,
            decoration: InputDecoration(
              hintText: "Item Code", labelText: "Item Code"),
            ),
            TextField(controller: controllerName,
            decoration: InputDecoration(
              hintText: "Item Name", labelText: "Item Name"),
            ),
            TextField(controller: controllerPrice,
            decoration: InputDecoration(
              hintText: "Price", labelText: "Price"),
            ),
            TextField(controller: controllerStock,
            decoration: InputDecoration(
              hintText: "Stock", labelText: "Stock"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                addData();
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (BuildContext context) => ReadData()));
              }, 
              child: Text("Add Data"),
              ),
        ],
      ),
    ),
  );
 }
}