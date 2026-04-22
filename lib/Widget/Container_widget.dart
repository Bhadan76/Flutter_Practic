import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container_widget extends StatelessWidget {
  final String img;
  const Container_widget({
    super.key, required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 280,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(24),
      ),

      child: Center(
        child: Column(

          children: [
            ClipRRect(
              child: Stack(
                children: [
                  Image.asset(img,
                    height: 200,
                    width:280 ,

                  ),
                ],
              ),
            ),
          ],
        ),
        // child: Row(
        //   children: [
        //     ClipRRect(
        //       child: Stack(
        //         children: [
        //           Image.asset(img,
        //             height: 200,
        //             width:280 ,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),

      ),

    );

  }
}