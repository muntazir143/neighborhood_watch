import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/widgets/button_global.dart';
import 'package:neighbourhood_watch/ui/widgets/textfield_global.dart';

class Property extends StatefulWidget {
  @override
  _PropertyState createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
  TextEditingController houseNo;
  TextEditingController description;
  TextEditingController area;
  TextEditingController kidsUnder10;
  TextEditingController kidsUnder16;
  TextEditingController type;
  TextEditingController gps;
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
                  'Vehicles',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.home,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'House No',
                      houseNo),
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
                        Icons.person,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Kids Under 10',
                      kidsUnder10),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.person,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Kids Under 16',
                      kidsUnder16),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Type',
                      type),
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
                      'GPS',
                      gps),
                ),
                SizedBox(
                  height: 70.0,
                ),
                GlobalButton('CONTINUE', () {}, width * 0.7),
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