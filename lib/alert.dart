
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alert extends StatelessWidget {
  const alert({super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    void showAlertDialog(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Alert👽👽👽👽👽'),
        content: Text('Are you sure ....'),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Cancle')),
          ElevatedButton(onPressed: () {}, child: Text('Ok')),
        ],
      ));

    }
    //showDialogBox

    void showDialogBox(){
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text('Alert👽👽👽👽👽'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.add_alert,color: Colors.red,),
                SizedBox(width: 10,),
                Text('Alert👽👽👽👽👽',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),

              ],
            ),
            SizedBox(width: 10,),
            Text('Are you sure ....',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),

          ],
        ),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('No')),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Yes')),
        ],
      ));

    }
    //SimpleDialogBox
    void SimpleDialogBox(){
      showDialog(context: context,
          barrierDismissible: false,
          builder:
          (context)=> SimpleDialog(
        title: Text('Alert👽👽👽👽👽'),
        children: [
          SimpleDialogOption(
            child: Text('Option 1'),

          ),
          SimpleDialogOption(
            child: Text('Option 2'),
          ),
          SimpleDialogOption(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your number'
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Ok')),
          )
        ],

      ));
    }
    //showBottomSheetAlert Box
    void showBottomSheetAlert(){
      showModalBottomSheet(context: context, builder: (context)=> Container(
        child: Column(
          children: [

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            SizedBox(height: 20,)
            ,
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Close')),

          ],
        ),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Box'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: screen.height*0.5,
            width: screen.width*0.3,
          ),
          SizedBox(height: 20,),
          Text('Alert Box',style: TextStyle(fontSize: screen.width> 600 ?32:18,),),
          ElevatedButton(onPressed: () {
            showAlertDialog();
          }, child: Text('Alert Box')),
          //Show dialog box
          ElevatedButton(onPressed: () {
            showDialogBox();
          }, child: Text('show dialog Box')),
         //Simple Dialog Box
          ElevatedButton(onPressed: () {
            SimpleDialogBox();
          }, child: Text('Simple Dialog Box`')),
          //showBottomSheetAlert
          ElevatedButton(onPressed: () {
            showBottomSheetAlert();
          }, child: Text('showBottomSheetAlert')),

        ],
      ),
    );
  }
}
