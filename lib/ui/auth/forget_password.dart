import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/widgets/button_global.dart';
import 'package:neighbourhood_watch/ui/widgets/textfield_global.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController email;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height * 0.05,
                  width: width,
                ),
                Container(
                  height: height * 0.25,
                  width: width,
                  child: Image.asset(
                    'assets/images/nhwlogo_global.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'Enter Your Email below,\nto receive the verification code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.email,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Email',
                      email),
                ),
                SizedBox(
                  height: 70.0,
                ),
                GlobalButton('SUBMIT', () {}, width * 0.7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}