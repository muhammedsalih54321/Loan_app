import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/screens/onboardscreen3.dart';

class Onboradscreen2 extends StatelessWidget {
  const Onboradscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image.asset(
              'assets/images/img2.png',
            
            ),
            SizedBox(height: 20.h,),
            Text(
                    'Pay Bills',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700),
                  ),  SizedBox(height: 10.h,),
                   Text(
              'Pay Bills such as Electricity, Water bill,\nTV subscriptions etc.\nBuy airtime & Bundles.',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
              ),  SizedBox(height: 60.h,),
               GestureDetector(
              onTap:() =>  Navigator.push(context, MaterialPageRoute(builder: (_)=>Onboradscreen3())),
              child: Container(
                height: 45.h,
                width: 230.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Color(0xFFFF0083)),
                child: Center(
                  child: Text(
                    'Next',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
                  ],
        ),
      )),
    );
  }
}