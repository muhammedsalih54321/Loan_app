import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/components/bottomsheet2.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

class Bottomsheet1 extends StatefulWidget {
  const Bottomsheet1({super.key});

  @override
  State<Bottomsheet1> createState() => _Bottomsheet1State();
}

class _Bottomsheet1State extends State<Bottomsheet1> {
  bool? ischecked = false;

  double _lowerValue = 0;

  double _upperValue = 100;

  

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'How long do you want the loan for?',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  '2 Months',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RangeSliderFlutter(
                    values: [_lowerValue, _upperValue],
                    rangeSlider: false,
                    max: 101,
                    handlerHeight: 25,
                    tooltip: RangeSliderFlutterTooltip(
                      alwaysShowTooltip: false,
                    ),
                    trackBar: RangeSliderFlutterTrackBar(
                      activeTrackBarHeight: 8,
                      inactiveTrackBarHeight: 8,
                      activeTrackBar: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFF0083),
                      ),
                      inactiveTrackBar: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(77, 255, 0, 132),
                      ),
                    ),
                    min: 0,
                    fontSize: 15,
                    textBackgroundColor: Color(0xFFFF0083),
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                      setState(() {});
                    },
                  ),
                ),
                Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  child: Container(
                      height: 70.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  'Monthly\nPayment',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'NIL',
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  'No of\nPayments',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'NIL',
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  'Total\nPayment',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'NIL',
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: ischecked,
                      onChanged: (value) {
                        return setState(() {
                          ischecked = value;
                        });
                      },
                    ),
                    Text(
                      'I agree to the ',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Terms & Conditions and',
                      style: GoogleFonts.poppins(
                          color: Color(0xFFFF0083),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'and',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Policy.',
                      style: GoogleFonts.poppins(
                          color: Color(0xFFFF0083),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.r),
                              topRight: Radius.circular(30.r))),
                      context: context,
                      builder: (context) {
                        return Bottomsheet2() ;
                      },
                    );
                  },
                  child: Container(
                    height: 45.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: Color(0xFFFF0083)),
                    child: Center(
                      child: Text(
                        'Apply Now',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
