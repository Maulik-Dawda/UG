

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UgIntro1 extends StatelessWidget {
  const UgIntro1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xff2683e0),
        onPressed: (){}, label: Text("Next",style: TextStyle(color: Colors.white),), icon: Icon(CupertinoIcons.arrow_right,color: Colors.white,),),
      backgroundColor: CupertinoColors.white,
      body: Center(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
                shadowColor: Colors.black,
                color: CupertinoColors.systemOrange,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Lottie.asset('assets/animations/ug_intro_2_animation.json',),
                )),
            SizedBox(height: screenHeight * 0.02,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Stay Focused",style: TextStyle(fontSize: screenHeight * 0.028,fontWeight: FontWeight.bold),)),
                  SizedBox(height: screenHeight * 0.005,),
                  Text("No distractions. Just pure grind. Stay on track with reminders, streaks, and a progress bar that actually motivates you.",style: TextStyle(fontSize: screenHeight * 0.015,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
