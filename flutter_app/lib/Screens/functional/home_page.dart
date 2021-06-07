import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'line_chart_page.dart';

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
                    alignment: Alignment.center,
                    child: LiteRollingSwitch(
                      value: false,
                      textOn: "On",
                      textOff: "Off",
                      colorOn: Colors.greenAccent,
                      colorOff: Colors.redAccent,
                      iconOn: Icons.done,
                      iconOff: Icons.alarm_off,
                      textSize: 18.0,
                      onChanged: (bool position) {
                        print("The button is $position");
                      },
                    ),
                    constraints:
                        BoxConstraints.tightForFinite(width: 200, height: 200),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
