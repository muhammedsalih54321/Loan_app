
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/screens/loantransactionscreen.dart';

class Bottomsheet2 extends StatefulWidget {
  const Bottomsheet2({super.key});

  @override
  State<Bottomsheet2> createState() => _Bottomsheet2State();
}

class _Bottomsheet2State extends State<Bottomsheet2> {
  List name1 = [
    'Next Repayment Date:',
    'Interest Rate:',
    'Monthly Repayment:',
    'No of Payments:',
    'Reason:',
    'Total Payback Amount:'
  ];
  List name2 = [
    '02/04/2023',
    '10 %',
    '\$5,000.00',
    '2',
    'Emergency Bills',
    '\$ 10,050.00',
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
                          height: 630.h,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                Container(
                                    height: 180.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        color:
                                            Color.fromARGB(47, 200, 198, 198)),
                                    child: ListView.builder(
                                      itemCount: name1.length,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    name1[index],
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.grey,
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  Text(
                                                    name2[index],
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                ],
                                              ),
                                            ),
                                           
                                          ],
                                        );
                                      },
                                    )),
                                     SizedBox(
                                              height: 40.h,
                                            ),
                                            GestureDetector(
                                              onTap: () => Navigator.push(
                                                  context, MaterialPageRoute(builder: (_) => Loanscreen())),
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
                                                    'Accept',
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: 17.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            GestureDetector(
                                              // onTap: () => Navigator.push(
                                              //     context, MaterialPageRoute(builder: (_) => Otp_page2())),
                                              child: Container(
                                                height: 45.h,
                                                width: 320.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.r),
                                                    color:Colors.black),
                                                child: Center(
                                                  child: Text(
                                                    'Decline',
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