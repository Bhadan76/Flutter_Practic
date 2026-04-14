import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app/list_view.dart';

class image extends StatelessWidget {
  image({super.key});
  final formKey=GlobalKey<FormState>();

  TextEditingController phoneController=TextEditingController();
  TextEditingController passwordController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Section', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         /* Image.network(

             'https://pngtree.com/freepng/facebook-social-media-icon_4235822.html',
             height: 250,
             width: 250,
          ),*/
          Image.asset(
              'asset/—Pngtree—facebook social media icon_4235822.png',
              height: 130,
              width: 100,

          ),
          Text('Facebook Login',
            style: TextStyle(

              fontSize: 50,
              fontWeight: FontWeight.w500
            ),

          ),
          SizedBox(height: 20),

          Form(
            key: formKey,

              child:Column(
            children: [
              // Text('Phone Number',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
              TextFormField(

                controller: phoneController,
                keyboardType: TextInputType.phone,

                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.phone),
                  hintText:"Phone Number",
                  hintStyle: TextStyle(
                    color: Colors.lightBlueAccent,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please Enter Phone Number';
                  }else if(value.length!= 11){
                    return 'Please Enter Valid Phone Number';
                  }else{
                    return null;

                  }

                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(

                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText:"Password",
                    hintStyle: TextStyle(
                      color: Colors.lightBlueAccent,


                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)

                    )
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Password';
                  } else if (value.length < 6) {
                    return 'Please must be 6 Character or More Password';
                  } else {
                    return null;
                  }
                }
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 300,


                  child: ElevatedButton(onPressed: () {
                    if(formKey.currentState!.validate()){
                     Navigator.push(context, MaterialPageRoute(builder:(context)=> ListV(number: phoneController.text ,)));
                    }

                  }, child: Text('Login',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),)))
            ],
          ))
        ],
      )
    );
  }
}
