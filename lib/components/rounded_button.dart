import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  const RoundedButton(
    @required this.buttonColor,
    @required this.buttonFunction,
    @required this.buttonText,
  );
  final Color buttonColor;
  final String buttonText;
  final VoidCallback buttonFunction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            buttonFunction();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(buttonText , style : TextStyle(color : Colors.white)),
        ),
      ),
    );
  }
}
