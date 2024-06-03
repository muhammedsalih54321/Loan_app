import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/screens/otp_page2.dart';

class Phone_number_page2 extends StatefulWidget {
  const Phone_number_page2({super.key});

  @override
  State<Phone_number_page2> createState() => _Phone_number_page2State();
}

class _Phone_number_page2State extends State<Phone_number_page2> {
   bool? ischecked =false;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'How you’ll log in',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 29.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Make sure you keep it as secure as\npossible!',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: '+ (_ _ _)',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    label: Text(
                      'Mobile Number',
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    label: Text(
                      'Password',
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Otp_page2())),
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
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Checkbox(value: ischecked, onChanged:(value) {
                return setState(() {
                  ischecked=value;
                });
              },),
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
                        color:Colors.black,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400),
                  ),
                   Text(
                    'Policy.',
                    style: GoogleFonts.poppins(
                        color:Color(0xFFFF0083),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400),
                  ),
              
              ],
            )
          ],
        ),
      )),
    );
  }
}
