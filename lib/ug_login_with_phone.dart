import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:ug_intro/button.dart';
import 'package:ug_intro/ug_otp_phone.dart';

class UgLoginWithPhone extends StatefulWidget {
  const UgLoginWithPhone({super.key});

  @override
  State<UgLoginWithPhone> createState() => _UgLoginWithPhoneState();
}

class _UgLoginWithPhoneState extends State<UgLoginWithPhone> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  final TextEditingController phoneNumber = TextEditingController();

  @override
  void initState() {
    super.initState();
    countryCode = const CountryCode(name: 'India', code: 'IN', dialCode: '+91');
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;



    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/ug_login_bg_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ug_login_boy_image.png",height: screenHeight * 0.3,),
                      Text(
                        "India's Fastest App",
                        style: TextStyle(
                          fontSize: screenHeight * 0.030,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text("Login or Sign up", style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(height: screenHeight * 0.035),
                      TextField(
                        controller: phoneNumber,
                        maxLength: 15,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                        maxLines: 1,
                        decoration: InputDecoration(
                          labelText: "Enter Phone Number",
                          labelStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          prefixIcon: GestureDetector(
                            onTap: () async {
                              final code = await countryPicker.showPicker(context: context);
                              if (code != null) {
                                setState(() {
                                  countryCode = code;
                                });
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  countryCode?.flagImage( width: screenWidth * 0.07) ?? const SizedBox.shrink(),
                                  SizedBox(width: screenWidth * 0.02,),
                                  Text(
                                    countryCode?.dialCode ?? '+91',
                                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                                  ),
                                  const Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Button(
                        btnText: "Login",
                        onPressed: () {
                          if (countryCode != null && phoneNumber.text.trim().isNotEmpty) {
                            String fullNumber = "${countryCode!.dialCode}-${phoneNumber.text.trim()}";

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UgOtpPhone(fullPhoneNumber: fullNumber),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Please enter a valid phone number")),
                            );
                          }
                        },
                        imageAssetPath: "",
                        btnBorderColor: Colors.grey,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
