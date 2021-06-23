import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  HomePageButton({@required this.color, this.child, this.onPress});

  final Color color;
  final Widget child;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: child,
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }
}
