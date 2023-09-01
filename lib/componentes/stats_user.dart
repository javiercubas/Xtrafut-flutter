import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StatsUser extends StatelessWidget{
  const StatsUser({
    Key? key,
    required this.name,
    required this.data,
  }) : super(key: key);
  final String name;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          data,
          style: TextStyle(
              color: const Color.fromARGB(255, 24, 24, 24),
              fontSize: 25.sp,
              fontWeight: FontWeight.bold),
        ),
        Text(
          name,
          style: TextStyle(
            color: const Color.fromARGB(255, 24, 24, 24),
            fontSize: 12.sp,
          ),
        )
      ],
    );
  }
}