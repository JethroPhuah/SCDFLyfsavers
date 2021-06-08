import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'line_chart_page.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar:
            AppBar(title: Text("Smart Pressure Monitor"), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Container(
                child: LineChartPage(),
                width: 500,
                height: 505,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Container(
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.red,
                        width: 1.2,
                      ),
                    ),
                    child: new Text(
                      "TURN VALVE ON/OFF",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: LiteRollingSwitch(
                      value: false,
                      textOn: "On",
                      textOff: "Off",
                      colorOn: Colors.greenAccent,
                      colorOff: Colors.redAccent,
                      iconOn: Icons.done,
                      iconOff: Icons.warning_amber_rounded,
                      textSize: 18.0,
                      onChanged: (bool valveOn) async {
                        //Turn ON valve
                        if (valveOn == true) {
                          //POST REQUEST
                          print("POST REQUEST");
                          var coordinates = "3.12345, 1.232123";
                          var response = await openValve(coordinates, valveOn);
                          if (response.statusCode == 201) {
                            // If the server did return a 201 CREATED response,
                            // then print msg
                            print("The valve is $valveOn");
                          } else {
                            // If the server did not return a 201 CREATED response,
                            // then throw an exception.
                            throw Exception('Failed to turn $valveOn.');
                          }
                          //Turn OFF valve
                        } if(valveOn==false) {
                          //GET REQUEST
                          print("GET REQUEST");
                          getRequest();
                        }
                      },
                    ),
                    constraints:
                        BoxConstraints.tightForFinite(width: 200, height: 200),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Future<http.Response> openValve(String coordinates, bool valveOn) {
    return http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, Map>{
        'data': {'coordinates': coordinates, 'valveOn': valveOn}
      }),
    );
  }

  void getRequest() {

  }
}
