import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpTextFeild extends StatelessWidget {
  const OtpTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(height: screenHeight * 0.1, width: screenWidth * 0.15, child: TextField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [LengthLimitingTextInputFormatter(1)],
      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    ),);
  }
}
