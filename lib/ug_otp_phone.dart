import 'package:flutter/material.dart';
import 'package:ug_intro/otp_text_feild.dart';

class UgOtpPhone extends StatelessWidget {

  final String fullPhoneNumber;

  const UgOtpPhone({super.key , required this.fullPhoneNumber});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("We have sent a verification code to",style: TextStyle(fontSize: screenHeight * 0.015,fontWeight: FontWeight.w500),),
            Text(fullPhoneNumber,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: screenHeight * 0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpTextFeild(),
                  OtpTextFeild(),
                  OtpTextFeild(),
                  OtpTextFeild(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
