import 'package:covid19/components/constants.dart';
import 'package:covid19/models/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Welcome record;
  final String label;
  final int value;
  final DatePickerDateOrder date;
  ResuableCard({
    this.record,
    this.label,
    this.value,
    this.date
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Color(0xFF323232),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: kTextStyle,
            ),
            Text(
              '$value',
              style: kNumberStyle,
            ),
          ],
        ),
      ),
    );
  }
}

