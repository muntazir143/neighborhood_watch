import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/widgets/button_global.dart';
import 'package:neighbourhood_watch/ui/widgets/textfield_global.dart';

class NHGCreate extends StatefulWidget {
  @override
  _NHGCreateState createState() => _NHGCreateState();
}

class _NHGCreateState extends State<NHGCreate> {
  TextEditingController name;
  TextEditingController description;
  TextEditingController area;
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
              height: height * 0.25,
              width: width,
              child: Image.asset(
                'assets/images/nhwlogo_global.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              'Create NHG',
              textAlign: TextAlign.center,
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
                  'Name',
                  name),
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
                  height: 50.0,
                ),
                GlobalButton('CONTINUE', () {}, width * 0.7),
             
          ],
        ),
      ),
    );
  }
}
