import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_store_flutter/readdata.dart';

class EditData extends StatefulWidget{
  // const EditData({ Key? key }) : super(key: key);
  final List? list;
  final int? index;

  EditData({this.list, this.index});

  @override
  _EditDataState createState() => _EditDataState();
}

class _EditDataState extends State<EditData> {
  TextEditingController controllerCode = TextEditingController();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPrice = TextEditingController();
  TextEditingController controllerStock = TextEditingController();

  void editData(){
    var url = "http://mystorednd.orgfree.com/editdata.php";
    http.post(Uri.parse(url), body: {
      "id": '${(widget.list as dynamic)[widget.index]['id']}',
      "itemcode": controllerCode.text,
      "itemname": controllerName.text,
      "price": controllerPrice.text,
      "stock": controllerStock.text,
    });
  }

  @override
  void initState(){
    // TODO: implement initstate
     controllerCode = TextEditingController(
       text: '${(widget.list as dynamic)[widget.index]['item_code']}');
     controllerName = TextEditingController(
       text: '${(widget.list as dynamic)[widget.index]['item_name']}');
     controllerPrice = TextEditingController(
       text: '${(widget.list as dynamic)[widget.index]['price']}');
     controllerStock = TextEditingController(
       text: '${(widget.list as dynamic)[widget.index]['stock']}');
     super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: controllerCode,
              decoration: InputDecoration(
                hintText: "Item Code", labelText: "Item Code"),
              ),
            TextField(
              controller: controllerName,
              decoration: InputDecoration(
                hintText: "Item Name", labelText: "Item Name"),
              ),
            TextField(
              controller: controllerPrice,
              decoration: InputDecoration(
                hintText: "Price", labelText: "Price"),
              ),
            TextField(
              controller: controllerStock,
              decoration: InputDecoration(
                hintText: "Stock", labelText: "Stock"),
              ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed:(){
                editData();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ReadData()));
              }, 
              child: Text("Edit Data"),
              ),
            ],
          ),
        ),
    );
  }
}