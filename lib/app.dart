import 'package:first_app/Assignment.dart';
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
  Widget build(BuildContext context0) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 88, 214, 15),
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        primaryColorLight: Colors.blueGrey,
        scaffoldBackgroundColor: const Color.fromARGB(255, 247, 244, 244),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          titleTextStyle: TextStyle(
            color: Colors.white60,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white60,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),

        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.deepOrange,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.deepOrange, width: 2),
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.deepOrange,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          labelStyle: TextStyle(
            color: Colors.deepOrange,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => Assignment(),
        '/NavigatorV': (context) => NavigatorV(),
        '/alert': (context) => alert(),
      },
      
    );
  }
}
