
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Stack_widget.dart';
import 'home.dart';
import 'image_section.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Drawer View'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Star',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Container(
            //   color: Colors.red,
            //   child: Center(
            //     child: Text('Home',style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //     ),),
            //   )
            // ),
            // Container(
            //   color: Colors.blue,
            //   child: Center(
            //     child: Text('Search',style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //     ),),
            //   )
            // ),
            // Container(
            //   color: Colors.green,
            //   child: Center(
            //     child: Text('Star',style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //     ),),
            //   )
            // ),
            StackWidget(),
            Home(),
            image(),
          ],
        ),
      
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius:30,
                    backgroundImage: NetworkImage('https://pngtree.com/freepng/facebook-social-media-icon_4235822.html'),
                  ),
                  SizedBox(height: 10,),
                  Text('Bhadan Paul',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('bhadanpaul@gmail.com',style: TextStyle(
                    fontSize: 14
                  ),),
                ],
              )),
              ListTile(
                title: Text('Home'),
                onTap: () {},
              ),
              Divider(
                thickness: 2,
                color: Colors.greenAccent,
              ),
      
              ListTile(
                visualDensity:VisualDensity(
                  horizontal: 0,
                  vertical: -4
                ) ,
                dense: true,
                title: Text('Contacts'),
                onTap: () {},
              ),
              Divider(
                thickness: 2,
                color: Colors.greenAccent,
              ),
      
              ListTile(
                title: Text('Note'),
                onTap: () {},
              ),
              Divider(
                thickness: 2,
                color: Colors.greenAccent,
              ),
      
              ListTile(
                title: Text('Map view'),
                onTap: () {},
              ),
              Divider(
                thickness: 2,
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
