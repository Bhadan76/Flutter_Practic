

import 'package:flutter/material.dart';

import 'Drawer.dart';

class NavigatorV extends StatelessWidget {
  const NavigatorV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/DrawerView');
          }, child: Text('Home Page')),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/alert');
          }, child: Text('Button')),
          ElevatedButton(onPressed: () {
            Navigator.push(context, PageRouteBuilder(
                pageBuilder:(context,animation,secondaryAnimation)=> DrawerView(),
                transitionsBuilder: (context,animation,secondaryAnimation,child){
                  const begin=Offset(1.0, 2);
                  const end=Offset.zero;
                  const curve= Curves.ease;
                  var tween=Tween(begin: begin,end: end,).chain(CurveTween(curve: curve));
                  return SlideTransition(position: animation.drive(tween),child: child,);


                }
            ));
          }, child: Text('Button2')),
        ],
      ),

    );
  }
}
