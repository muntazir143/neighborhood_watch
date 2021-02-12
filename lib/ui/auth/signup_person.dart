import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/widgets/button_global.dart';
import 'package:neighbourhood_watch/ui/widgets/textfield_global.dart';

class SignUpPerson extends StatefulWidget {
  @override
  _SignUpPersonState createState() => _SignUpPersonState();
}

class _SignUpPersonState extends State<SignUpPerson> {
  TextEditingController username;
  TextEditingController description;
  TextEditingController contact;
  TextEditingController password;
  TextEditingController area;
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: height * 0.12,
                  width: width,
                  child: Image.asset(
                    'assets/images/nhw_profile.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.person,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Username',
                      username),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.edit,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Description',
                      description),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.call,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Contact No.',
                      contact),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.cake,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Date of Birth',
                      password),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.location_on,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Area',
                      area),
                ),
                SizedBox(
                  height: 15.0,
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
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.lock,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Password',
                      password),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.lock,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Confirm Password',
                      password),
                ),
                SizedBox(
                  height: 70.0,
                ),
                GlobalButton('CONTINUE', () {}, width * 0.7),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'By creating an account you agree to our',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Terms of Service and Privacy Policy',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(198, 57, 93, 1),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
