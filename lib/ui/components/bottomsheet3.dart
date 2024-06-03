import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/components/bottomsheet4.dart';

class Bottomsheet3 extends StatelessWidget {
  const Bottomsheet3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 320.h,
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Repay Loan',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close))
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 40.h,
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color: Colors.pink.shade50),
                child: TabBar(tabs: [
                  Tab(
                    child: Text(
                      'Full Repayment',
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Partial Repayment',
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                dividerColor: Colors.transparent,
                indicatorWeight: 0,
                indicatorColor:  Color(0xFFFF0083),
                indicatorSize:TabBarIndicatorSize.tab ,
                indicator:BoxDecoration(borderRadius: BorderRadius.circular(30.r),color:  Color(0xFFFF0083)),
                ),
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Repay your loan today and take another one immediately.',
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'You currently owe',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            '\$ 10,050.00',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
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
                              return Bottomsheet4();
                            },
                          );
                        },
                        child: Container(
                          height: 45.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Color(0xFFFF0083)),
                          child: Center(
                            child: Text(
                              'Continue',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Repay your loan today and take another one immediately.',
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                       TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                       
                        label: Text(
                          'Enter Amount',
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                                  ),
                        SizedBox(
                          height: 15.h,
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
                                return Bottomsheet4();
                              },
                            );
                          },
                          child: Container(
                            height: 45.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Color(0xFFFF0083)),
                            child: Center(
                              child: Text(
                                'Continue',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
