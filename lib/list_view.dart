
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListV extends StatefulWidget {
  final number;
  const ListV({super.key, required this.number,});

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
        itemCount: 50,
          itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete,color: Colors.black,),
              title: Text('Bhadan Paul'),
              subtitle: Text(widget.number),
            ),
          );

          }
      ),
    );
  }
}
