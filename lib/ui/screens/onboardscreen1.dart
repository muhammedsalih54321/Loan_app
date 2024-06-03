import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/screens/onboardscreen2.dart';

class Onboradscreen1 extends StatelessWidget {
  const Onboradscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image.asset(
              'assets/images/img1.png',
            
            ),
            SizedBox(height: 20.h,),
            Text(
                    'Send Money',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700),
                  ),  SizedBox(height: 10.h,),
                   Text(
              'Send money to all networks and banks\nright from your Pay Fast\naccount.',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
              ),  SizedBox(height: 60.h,),
               GestureDetector(
              onTap:() =>  Navigator.push(context, MaterialPageRoute(builder: (_)=>Onboradscreen2())),
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
