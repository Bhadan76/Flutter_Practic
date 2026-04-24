import 'package:flutter/material.dart';
import 'input_field.dart';

import 'Drawer.dart';

class NavigatorV extends StatelessWidget {
  const NavigatorV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/DrawerView');
            },
            child: Text('Home Page'),
          ),
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/alert');
            },
            child: Text('Button'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      DrawerView(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 2);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(
                          begin: begin,
                          end: end,
                        ).chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                ),
              );
            },
            child: Text('Button2'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 248, 160, 133),
              foregroundColor: const Color.fromARGB(153, 12, 7, 7),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DrawerView()),
              );
            },
            child: Text(
              'Replace button',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}
