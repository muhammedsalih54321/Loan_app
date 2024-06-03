
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottomsheet4 extends StatelessWidget {
  const Bottomsheet4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                                height: 520.h,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Text(
                                        'That was way to easy!',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Text(
                                        'Congratulations!',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      CircleAvatar(
                                        radius: 50.r,
                                        backgroundColor:
                                            Color.fromARGB(41, 76, 175, 79),
                                        child: Center(
                                          child: Icon(
                                            Icons.done_rounded,
                                            size: 60.sp,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Text(
                                        'Transaction Summary',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                       Text(
                            textAlign: TextAlign.center,
                            '\$ 10,050.00',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600),
                          ),
                           SizedBox(
                                        height: 20.h,
                                      ),
                           Text(
                            textAlign: TextAlign.center,
                            'Your Loan has been fully\nPaid',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700),
                          ), SizedBox(
                                              height: 60.h,
                                            ),
                                            GestureDetector(
                                              onTap: () => Navigator.pop(context),
                                              child: Container(
                                                height: 45.h,
                                                width: 320.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.r),
                                                    color: Color(0xFFFF0083)),
                                                child: Center(
                                                  child: Text(
                                                    'Okey',
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: 17.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              );
  }
}