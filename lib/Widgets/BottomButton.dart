import 'package:bmi_tt9/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function() onTap;
  final String buttonTitle;
  // final Color color;
  BottomButton({required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        // color: Colors.green,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        // padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 35,
      ),
    );
  }
}
