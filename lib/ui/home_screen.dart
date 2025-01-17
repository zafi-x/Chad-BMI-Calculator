import 'dart:math';
import 'package:chad_bmi_calulator/ui/bmiResult.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedGender = 0;
  int _height = 170;
  int _weight = 40;
  int _age = 10;
  double _bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 242, 253),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 242, 253),
        title: Text(
          'BMI Calculator',
          style: GoogleFonts.montserrat(
              fontSize: 30.sp,
              color: Colors.black,
              letterSpacing: 1,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0.r),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 120.h,
              width: double.infinity.w,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 144, 202, 249),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        child: Icon(
                          Icons.male,
                          color: _selectedGender == 0
                              ? Colors.blue[300]
                              : Colors.black,
                        ),
                      ),
                      Text(
                        'Male',
                        style: GoogleFonts.lato(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      IconButton(
                        iconSize: 66,
                        onPressed: () {
                          setState(
                            () {
                              _selectedGender = 1;
                            },
                          );
                        },
                        icon: Icon(
                          Icons.female,
                          color: _selectedGender == 1
                              ? Colors.pink[300]
                              : Colors.black,
                        ),
                      ),
                      Text(
                        'Female',
                        style: GoogleFonts.lato(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 120.h,
              width: double.infinity.w,
              decoration: BoxDecoration(
                color: Colors.blueGrey[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Height",
                      style: GoogleFonts.lato(
                          fontSize: 30.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Slider(
                      min: 0,
                      max: 300,
                      divisions: 300,
                      activeColor: const Color.fromARGB(255, 60, 76, 85),
                      value: _height.toDouble(),
                      onChanged: (value) {
                        setState(
                          () {
                            _height = value.toInt();
                          },
                        );
                      },
                    ),
                    Text(
                      '$_height cm',
                      style: GoogleFonts.nunito(
                          fontSize: 23.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // height: 100.h,
                  // width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[400],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          'Weight',
                          style: GoogleFonts.lato(
                              fontSize: 25.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        ItemCount(
                            color: const Color.fromARGB(255, 91, 112, 124),
                            buttonSizeHeight: 35,
                            buttonSizeWidth: 40,
                            textStyle: GoogleFonts.nunito(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                            initialValue: _weight,
                            minValue: 40,
                            maxValue: 350,
                            onChanged: (value) {
                              setState(
                                () {
                                  _weight = value.toInt();
                                },
                              );
                            },
                            decimalPlaces: 0),
                      ],
                    ),
                  ),
                ),
                Container(
                  // height: 100.h,
                  // width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[400],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          'Age',
                          style: GoogleFonts.lato(
                              fontSize: 25.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        ItemCount(
                            color: const Color.fromARGB(255, 91, 112, 124),
                            buttonSizeHeight: 35,
                            buttonSizeWidth: 40,
                            textStyle: GoogleFonts.nunito(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                            initialValue: _age,
                            minValue: 10,
                            maxValue: 100,
                            onChanged: (value) {
                              setState(
                                () {
                                  _age = value.toInt();
                                },
                              );
                            },
                            decimalPlaces: 0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _bmi = _weight / pow(_height / 100, 2);
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(bmi: _bmi),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.blueGrey[400],
              ),
              child: Text(
                "View BMI Result",
                style: GoogleFonts.lato(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
