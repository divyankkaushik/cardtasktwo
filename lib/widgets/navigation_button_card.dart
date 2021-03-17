import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NavigationButtonCard extends StatefulWidget {
  final IconData iconData;
  final String iconlabel;
  final double cardDepth;
  NavigationButtonCard(this.iconData, this.iconlabel, this.cardDepth);
  @override
  _NavigationButtonCardState createState() => _NavigationButtonCardState();
}

class _NavigationButtonCardState extends State<NavigationButtonCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: widget.cardDepth,
          lightSource: LightSource.topLeft,
          color: Colors.white),
      child: Container(
          width: 80.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(widget.iconData),
              Text(
                widget.iconlabel,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          )),
    );
  }
}
