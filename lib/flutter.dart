import 'package:flutter/material.dart';

class flutterclass extends StatelessWidget {
  const flutterclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey[100],
      //backgroundColor: Colors.blueGrey.withOpacity(1.0),
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        title: Text(
          'Flutter App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 75,
              // width: 20
              width: double.infinity,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  print('Home Button Pressed');
                },
                child: Text('Home'),
              ),
            ),

            OutlinedButton(onPressed: () {}, child: Text('Out line Button')),

            TextButton(onPressed: () {}, child: Text('Text Button')),

            Icon(Icons.phone, size: 50, color: Colors.red),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.blue, size: 59),
            ),

            GestureDetector(
              onTap: () {
                print('Complet');
              },
              child: Text(
                'Test Button',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ),
            InkWell(
              onTap: () {
                print("Continue");
              },
              child: Text(
                'Test Button 2',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ),
            Padding(
              // padding: EdgeInsets.all(50),
              // padding: EdgeInsets.only(left:8, right:10,top: 6,bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
              child: Text(
                  'Button',
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
            ),

          ],
        ),
      ),
    );
  }
}
