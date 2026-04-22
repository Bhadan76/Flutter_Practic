
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Container_widget.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container_widget(img: 'asset/6.-Sylhet-.webp',),
            Container_widget(img: 'asset/Screenshot 2026-04-14 140642.png',),
            Container_widget(img: 'asset/6.-Sylhet-.webp',),

          ],
        ),
      ),

    );
  }
}


