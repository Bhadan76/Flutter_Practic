
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
        centerTitle: true,

      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
        
          children: [
            Stack(
        
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),
                Positioned(
                  bottom:10,
                  top: 10,
        
                  left: 10,
                  right: 10,
        
                  child: Container(
                    color: Colors.green,
                    height: 200,
                    width: 200,
        
                  ),
                ),
                Positioned(
                 top: 50,
                  left: 25,
                  right: 20,
                  child: Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,
        
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
        
            Stack(
        
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage:NetworkImage('https://imgs.search.brave.com/CMcUv95v9dj2bEHqDL1OZD0UTkqY8dPfpLfVNSni-Ic/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vRUFGeVYz/UXNvdTgvMy8wLzE2/MDB3L2NhbnZhLXBp/bmstYW5kLWJsYWNr/LWNpcmN1bGFyLWJh/ZGdlLXByb2Zlc3Np/b25hbC1saW5rZWRp/bi1wcm9maWxlLXBp/Y3R1cmUtXzhMX0tm/eTdjRVkuanBn') ,
                ),
        
                Positioned(
                    bottom: 10,
                    right: 3,
                  child: Container(
        
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 3),
                    ),
        
                  ),
                )
        
              ]
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  color: Colors.green,
                  height: 5,
                  width: double.infinity,
        
                ),
                AnimatedContainer(duration: Duration(seconds: 10),
                  height: 5,
                  width: 200,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Image.network('https://imgs.search.brave.com/CMcUv95v9dj2bEHqDL1OZD0UTkqY8dPfpLfVNSni-Ic/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vRUFGeVYz/UXNvdTgvMy8wLzE2/MDB3L2NhbnZhLXBp/bmstYW5kLWJsYWNr/LWNpcmN1bGFyLWJh/ZGdlLXByb2Zlc3Np/b25hbC1saW5rZWRp/bi1wcm9maWxlLXBp/Y3R1cmUtXzhMX0tm/eTdjRVkuanBn'),
                Positioned(
                  bottom: 20,
                  right: 100,
                  left: 20,
                
                    child: Text("Linkdin Profile",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              ]
            ),
        
            SizedBox(height: 20,),
            Stack(
                children: [
                  Image.network('https://imgs.search.brave.com/CMcUv95v9dj2bEHqDL1OZD0UTkqY8dPfpLfVNSni-Ic/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tYXJr/ZXRwbGFjZS5jYW52/YS5jb20vRUFGeVYz/UXNvdTgvMy8wLzE2/MDB3L2NhbnZhLXBp/bmstYW5kLWJsYWNr/LWNpcmN1bGFyLWJh/ZGdlLXByb2Zlc3Np/b25hbC1saW5rZWRp/bi1wcm9maWxlLXBp/Y3R1cmUtXzhMX0tm/eTdjRVkuanBn'),
                  Positioned(
                      bottom: 20,
                      right: 50,
                      left: 20,
        
                      child: Text("Linkdin Profile",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                ]
            ),
          ],
        ),
      ) ,

    );
  }
}
