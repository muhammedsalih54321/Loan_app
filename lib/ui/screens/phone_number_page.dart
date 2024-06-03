import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/screens/otp_page.dart';

class Phone_number_page extends StatelessWidget {
  const Phone_number_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img4.png',
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Add your mobile number',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'We’ll need to confirm it by sending a text.',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                  ),
                hintText: '+ (_ _ _)',
                hintStyle:  GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ) ,
                label: Text(
                'Mobile Number',
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),)),
              ),
            ),
            SizedBox(height: 30.h,),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Otp_page())),
              child: Container(
                height: 45.h,
                width: 320.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Color(0xFFFF0083)),
                child: Center(
                  child: Text(
                    'Proceed',
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
