
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alert extends StatelessWidget {
  const alert({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlertDialog(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Alert👽👽👽👽👽'),
        content: Text('Are you sure ....'),
        actions: [
          TextButton(onPressed: () {}, child: Text('Cancle')),
          ElevatedButton(onPressed: () {}, child: Text('Ok')),
        ],
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Box'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Alert Box')),
        ],
      ),
    );
  }
}
