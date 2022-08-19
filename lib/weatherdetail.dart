import 'package:flutter/material.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({Key? key, required this.label, required this.value})
      : super(key: key);

  final label;
  final value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
