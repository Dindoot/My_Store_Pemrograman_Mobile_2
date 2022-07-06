  import 'package:flutter/material.dart';
  import 'package:my_store_flutter/editdata.dart';
  import 'package:http/http.dart' as http;
  import 'package:my_store_flutter/readdata.dart';

  class Detail extends StatefulWidget {
    // const Detail({Key? key}) : super(key: key);
    List? list;
    int? index;
    Detail({this.index, this.list});

    @override
    _DetailState createState() => _DetailState();
  }

  class _DetailState extends State<Detail> {
    void deleteData(){
      var url = "http://mystorednd.orgfree.com/deletedata.php";
      http.post(Uri.parse(url), 
      body: {"id": (widget.list as dynamic)[widget.index]['id']});
    }

    void confirm(){
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          //title: const Text('AlertDialog Title),
          content: Text(
            "Are U Sure Want To Delete ${(widget.list as dynamic)[widget.index]['item_name']}"),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  deleteData();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ReadData()));
                },
                child: const Text('OK'),
              ),
            ],
          ),
      );
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('${(widget.list as dynamic)[widget.index]['item_name']}'),
        ),
        body: Container(
          height: 250,
          padding: EdgeInsets.all(20),
          child: Card(
            child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)
                ),
                Text(
                  (widget.list as dynamic)[widget.index]['item_name'],
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Code : ${(widget.list as dynamic)[widget.index]['item_code']}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Price : ${(widget.list as dynamic)[widget.index]['price']}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Stock : ${(widget.list as dynamic)[widget.index]['stock']}",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(padding: EdgeInsets.only(top: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                     onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => EditData(
                             list: widget.list,
                             index: widget.index,
                           )));
                     },
                     child: Text("Edit"),
                     style: ElevatedButton.styleFrom(primary: Colors.green),
                     ),
                    ElevatedButton(
                     onPressed: () {
                      confirm();
                     },
                     child: Text("Delete"),
                     style: ElevatedButton.styleFrom(primary: Colors.red),
                     ),
                  ],
                )
              ],
           )),
          ),
        ),
      );
    }
  }