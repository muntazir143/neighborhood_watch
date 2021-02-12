import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  final String buttonText;
  final Function buttonPressed;
  final double buttonWidth;

  const GlobalButton(this.buttonText, this.buttonPressed, this.buttonWidth);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return RaisedButton(
      color: Color.fromRGBO(198, 57, 93, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      onPressed: buttonPressed,
      child: Container(
        height: 50,
        width: buttonWidth,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
