import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter/material.dart';

class TodayActivityCard extends StatelessWidget {
  final IconData iconData;
  final String titleString;
  final String amountString;
  TodayActivityCard(this.iconData, this.titleString, this.amountString);

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
          height: 90.0,
          width: 130.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    color: Colors.deepPurpleAccent,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(titleString),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                amountString,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          )),
    );
  }
}
