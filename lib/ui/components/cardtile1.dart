import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardtile extends StatelessWidget {
  final String name;
  const Cardtile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 2,
      child: Container(
        height: 70.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r), color: Colors.white),
        child: Center(
          child: ListTile(
            leading: Container(
              height: 35.h,
              width: 35.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Colors.black),
              child: Center(
                  child: Icon(
                Icons.sim_card_download_rounded,
                color: Colors.white,
              )),
            ),
            title: Text(
              name,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
            trailing: Icon(
              Icons.arrow_circle_right_outlined,
              color: Colors.grey,
              size: 35.sp,
            ),
          ),
        ),
      ),
    );
  }
}
