import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/widgets/button_global.dart';
import 'package:neighbourhood_watch/ui/widgets/textfield_global.dart';

class Vehicle extends StatefulWidget {
  @override
  _VehicleState createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  TextEditingController vehicleReg;
  TextEditingController maker;
  TextEditingController model;
  TextEditingController vin;
  TextEditingController rid;
  TextEditingController type;
  TextEditingController color;
  TextEditingController update;
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
                        Icons.car_rental,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Vehicle Reg',
                      vehicleReg),
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
                      'Maker',
                      maker),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.app_registration,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Model',
                      model),
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
                      'VIN',
                      vin),
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
                      'RID(Owner)',
                      rid),
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
                        Icons.format_color_fill,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Color',
                      color),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: GlobalTextField(
                      Icon(
                        Icons.update,
                        color: Color.fromRGBO(198, 57, 93, 1),
                      ),
                      'Update',
                      update),
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