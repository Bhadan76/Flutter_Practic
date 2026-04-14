
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});



  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: 
            Text('Input Field', style: TextStyle(color: Colors.white60, fontSize: 30, fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your phone',
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check),
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                     
                  ),
                  labelStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)

                  )
                ),
              )

          ),

          Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 20,

                    ),
                    labelStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 20,

                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)

                    )
                ),
              )

          ),
          SizedBox(height: 20,),
          

         SizedBox(
           width: double.infinity,
           height: 50,
           child: ElevatedButton(onPressed: () {
             if(phoneController.text.isEmpty){
               ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(
                   content: Text('Please enter phone number')
                 )
               );

             }else if(phoneController.text.length<11){
               ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                       content: Text('Please enter valid phone number')
                   )
               );

             }else if(passwordController.text.isEmpty){
               ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                       content: Text('Please enter password')
                   )
               );

             }else if(passwordController.text.length<6){
               ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                       content: Text('Please enter valid password')
                   )
               );

             }else{
               ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                       content: Text('Login Successfully')
                   )
               );

             }

           }, child: Text('Login')),
         ) ,

          SizedBox(height: 20),


          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(onPressed: () {
              phoneController.clear();
              passwordController.clear();

            }, child: Text('Clear')),
          ) ,

          SizedBox(height: 20),

          Container(
            alignment: Alignment.center,
            height: 50,

            width: double.infinity,

            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(0, 6)
                )
              ]

            ),
            child: Text('This is Container', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          )



        ],
      ),
    );
  }
}