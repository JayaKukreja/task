import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants.dart';

class Hub extends StatelessWidget {
  const Hub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Hub",
        style: TextStyle(color: kblue, fontSize: 25.sp),
      )),
    );
  }
}
