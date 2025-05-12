import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            Text("We have sent a verification code to",style: TextStyle(fontSize: screenHeight * 0.025,fontWeight: FontWeight.w500),),
            Text(fullPhoneNumber,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 60, width: 60, child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                  ),),
                  SizedBox(height: 60, width: 60, child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                  ),),
                  SizedBox(height: 60, width: 60, child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                  ),),
                  SizedBox(height: 60, width: 60, child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                  ),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
