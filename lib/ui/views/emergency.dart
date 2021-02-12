import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/widgets/button_global.dart';

class Emergency extends StatefulWidget {
  @override
  _EmergencyState createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Container(
            height: height * 0.05,
            width: width,
          ),
          Material(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Image.asset(
              'assets/images/nhwemergency.png',
              fit: BoxFit.contain,
              height: height * 0.45,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          GlobalButton('HELP!!', () {}, width * 0.5),
        ],
      ),
    );
  }
}
