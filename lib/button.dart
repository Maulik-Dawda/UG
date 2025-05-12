import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String btnText;
  void Function()? onPressed;
  final String? imageAssetPath;
  final Color btnBorderColor;
  final Color foregroundColor;
  final Color backgroundColor;

  Button({
    super.key,
    required this.btnText,
    required this.onPressed,
    required this.imageAssetPath,
    required this.btnBorderColor,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    var buttonBorderRadius = BorderRadius.circular(10);
    
    return SizedBox(
      width: screenWidth * 0.7,
      height: screenHeight * 0.09,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 0),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: widget.foregroundColor,
            backgroundColor: widget.backgroundColor,
            side: BorderSide(color: widget.btnBorderColor, width: 1),
            shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.imageAssetPath != null && widget.imageAssetPath!.isNotEmpty) ...[
                Image.asset(
                  widget.imageAssetPath !,
                  width: screenHeight * 0.03,
                  height: screenHeight * 0.03,
                ),
                SizedBox(width: screenWidth * 0.044),
              ],
              Flexible(
                child: Text(
                  widget.btnText,
                  style: TextStyle(fontSize: screenHeight * 0.022),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
