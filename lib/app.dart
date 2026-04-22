import 'package:first_app/home.dart';
import 'package:first_app/image_section.dart';
import 'package:first_app/input_field.dart';
import 'package:first_app/list_view.dart';

import 'package:flutter/material.dart';


import 'Drawer.dart';
import 'Grid_View.dart';

import 'Navigator_widget.dart';
import 'Stack_widget.dart';
import 'Widget/Own_Widget.dart';
import 'home.dart';
import 'flutter.dart';
import 'alert.dart';



class Myapp extends StatelessWidget {
  Myapp({super.key});

  @override
  Widget build(BuildContext context0){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      initialRoute: '/NavigatorV',
      routes: {
        '/DrawerView': (context) => DrawerView(),
        '/NavigatorV': (context) => NavigatorV(),
        '/alert': (context) => alert(),
      },



    );
  }
}


