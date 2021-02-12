import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/widgets/textfield_global.dart';

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  TextEditingController contact;
  TextEditingController vehicle;
  TextEditingController location;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.035,
              width: width,
            ),
            Material(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Image.asset(
                'assets/images/nhwalert.png',
                fit: BoxFit.contain,
                height: height * 0.5,
                width: width * 0.7,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Amelia George is in trouble!!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25.0,
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
                    Icons.car_rental,
                    color: Color.fromRGBO(198, 57, 93, 1),
                  ),
                  'Vehicle',
                  vehicle),
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
                  'Location',
                  location),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
