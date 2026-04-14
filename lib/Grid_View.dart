
import 'package:first_app/image_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridView extends StatelessWidget {
  const gridView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Grid View',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
        leading: Icon(Icons.home,color: Colors.white,size: 30,),
        actions: [
          Icon(Icons.search,color: Colors.white,size: 30,),
        ],
        centerTitle: true,
      ),
      // body: GridView.count(
      //     crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //  // Container dia
      //    
      //   children: [
      //     Container(
      //         color: Colors.green,
      //         height: 200,
      //         width:200
      //     ),
      //     Container(
      //         color: Colors.green[100],
      //         height: 200,
      //         width:200
      //     ),
      //     Container(
      //         color: Colors.green[200],
      //         height: 200,
      //         width:200
      //     ),
      //     Container(
      //         color: Colors.green,
      //         height: 200,
      //         width:200
      //     )
      //
      //   ],
      //  
      //   //List er madome

      //   children: List.generate(10, (index){
      //     return Card(
      //       color: Colors.red,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       elevation: 10,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //
      //
      //           Icon(Icons.phone_android,color: Colors.white,size: 30,),
      //           SizedBox(height: 5,),
      //           Text('Send Money',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
      //         ]
      //       )
      //
      //     );
      //   })
      // )
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,


      ),
          itemCount: 4,

          itemBuilder: (context,index){
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(Icons.phone_android,color: Colors.white,size: 30,),
                          // SizedBox(height: 5,),
                          Image.asset('asset/—Pngtree—facebook social media icon_4235822.png',
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(height: 5,),
                          Text('Send Money',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)

                        ]

              ),
            );
          },
      )
    );
  }
}
