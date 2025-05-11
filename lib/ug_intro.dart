import 'package:flutter/material.dart';
import 'package:ug_intro/button.dart';

class UgIntro extends StatefulWidget {
  const UgIntro({super.key});

  @override
  State<UgIntro> createState() => _UgIntroState();
}

class _UgIntroState extends State<UgIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 400,),
              Button(btnText: "Sign in with Phone", onPressed: (){},foregroundColor: Colors.white,backgroundColor: Colors.black,btnBorderColor: Colors.grey,imageAssetPath: "",),
              SizedBox(height: 5,),
              Button(btnText: "Sign in with Google", onPressed: (){}, foregroundColor: Colors.black,backgroundColor: Colors.white,btnBorderColor: Colors.grey,imageAssetPath: "assets/btn_images/google.png",) ,

            ],
          ),
      ),

    );
  }
}
