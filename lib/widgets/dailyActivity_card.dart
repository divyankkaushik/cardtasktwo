import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';

class DailyActivityCard extends StatelessWidget {
  final String titleString;
  final String amountString;
  DailyActivityCard(this.titleString, this.amountString);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: 6,
          lightSource: LightSource.topLeft,
          color: Colors.white),
      child: Container(
          height: 80.0,
          width: 80.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(titleString),
              SizedBox(
                height: 10.0,
              ),
              Text(
                amountString,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 20.0,
                ),
              ),
            ],
          )),
    );
  }
}
