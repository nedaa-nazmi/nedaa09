import 'package:flutter/material.dart';

class MyFab extends StatelessWidget {
  const MyFab({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);
  final Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(minWidth: 30, minHeight: 30),
      padding: EdgeInsets.all(16),
      shape: CircleBorder(),
      fillColor: Colors.pinkAccent,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
