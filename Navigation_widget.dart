

import 'package:flutter/material.dart';

class NavigatorV extends StatelessWidget {
  const NavigatorV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/DrawerView');
          }, child: Text('Home Page')),
        ],
      ),

    );
  }
}
