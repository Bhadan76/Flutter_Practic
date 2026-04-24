import 'package:first_app/image_section.dart';
import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Greeting App',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Welcome to Flutter',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-bg-4ed9bfbf1a7c8e5e1b8c9e6a0b2c3d8e5c9b1a0e6f1a2c3d45e6f7a8b9c0.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white60,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

              onPressed: () {
                Navigator.pushNamed(context, '/NavigatorV');
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Button Pressed'),
                //     duration: Duration(seconds: 2),
                //   ),
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
