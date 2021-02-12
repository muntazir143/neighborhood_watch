import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/widgets/button_global.dart';
import 'package:neighbourhood_watch/ui/widgets/textfield_global.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email;
  TextEditingController password;
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
                SizedBox(
                  height: 30.0,
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
                  height: 30.0,
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
                  height: 50.0,
                ),
                GlobalButton('LOGIN', () {
                  Navigator.pushNamed(context, 'Homepage');
                }, width * 0.7),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'ForgetPassword');
                        },
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Color.fromRGBO(198, 57, 93, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          thickness: 1.0,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "  OR  ",
                        style: TextStyle(
                          color: Color.fromRGBO(198, 57, 93, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'SignUpPerson');
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
