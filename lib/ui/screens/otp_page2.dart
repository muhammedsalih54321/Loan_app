import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/screens/dashboardscreen.dart';

class Otp_page2 extends StatelessWidget {
  const Otp_page2({super.key});
  

  @override
   Widget build(BuildContext context) {
   
    return  Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Verify',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 29.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Please enter the 6 digit one time\ncode to activate your account!',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 35.h,
              width: 280.w,
              child:OtpTextField(
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        
        showFieldAsBox: true, 
       
        onCodeChanged: (String code) {
               
        },

        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, 
    )
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              ' Didn’t receive a Code?',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Resend Code!',
              style: GoogleFonts.poppins(
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h,),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Dashboardscreen())),
              child: Container(
                height: 45.h,
                width: 320.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Color(0xFFFF0083)),
                child: Center(
                  child: Text(
                    'Verify',
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
      )),
    );
  }
}