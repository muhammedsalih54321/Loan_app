import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/components/bottomsheet3.dart';

import 'package:loan_app/ui/components/staementtile.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Loanscreen extends StatefulWidget {
  const Loanscreen({super.key});

  @override
  State<Loanscreen> createState() => _LoanscreenState();
}

class _LoanscreenState extends State<Loanscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF0083),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFF0083),
        leading: Icon(
          Icons.more_vert_outlined,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          'Welcome',
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Good afternoon,',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Jacquie!',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  Container(
                    height: 145.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 15.w,
                    child: Text(
                      'Loan Balance',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 260.w,
                    child: Text(
                      '50%',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 15.w,
                    child: Row(
                      children: [
                        Text(
                          '\$10,000.00 ',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'of \$10,050.00 ',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 240.w,
                    child: Text(
                      '39 days left',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    top: 80.h,
                    left: 10.w,
                    child: new LinearPercentIndicator(
                      // widgetIndicator: CircleAvatar(
                      //   radius: 7.r,
                      //   backgroundColor: Colors.black,
                      // ),
                      width: 330.0,
                      lineHeight: 6.0,
                      percent: 0.6,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.black,
                    ),
                  ),
                  Positioned(
                    top: 110.h,
                    left: 180.w,
                    child: Text(
                      'Repay Loan',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Positioned(
                      top: 100.h,
                      left: 265.w,
                      child: GestureDetector(
                        onTap: () {
                          print('clicked');
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    topRight: Radius.circular(30.r))),
                            context: context,
                            builder: (context) {
                              return Bottomsheet3();
                            },
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFF0083),
                          radius: 18.r,
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              height: 328.7.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transactions',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'See All',
                            style: GoogleFonts.poppins(
                                color: Color(0xFFFF0083),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Mini-Statement',
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Statementtile(
                        name: 'Loan Disbursement',
                        sub: '2022-09-12',
                        price: '\$10,050.00',
                        color: Colors.green),
                    Statementtile(
                        name: 'Withdraw to Bankt',
                        sub: '2022-09-12',
                        price: '\$10,050.00',
                        color: Colors.red),
                    Statementtile(
                        name: 'Loan Repayment',
                        sub: '2022-09-12',
                        price: '\$3000.00',
                        color: Colors.green),
                    Statementtile(
                        name: 'Loan Repayment Fees',
                        sub: '2022-09-12',
                        price: '-\$32.00',
                        color: Colors.red)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.pink,
                  size: 30.sp,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.wallet,
                  color: Colors.black,
                  size: 30.sp,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  CupertinoIcons.graph_circle,
                  color: Colors.black,
                  size: 30.sp,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.category_outlined,
                  color: Colors.black,
                  size: 30.sp,
                )),
          ]),
    );
  }
}
