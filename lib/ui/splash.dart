import 'dart:async';

import 'package:chad_bmi_calulator/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePageScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          height: 100.h,
          width: 110.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(255, 255, 255, 200),
                blurRadius: 35.r,
              ),
            ],
          ),
          child: Center(
            child: Text('BMI',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 44.sp,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
      ),
    );
  }
}
