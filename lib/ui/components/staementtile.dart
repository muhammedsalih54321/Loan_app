
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Statementtile extends StatelessWidget {
  final String name;
   final String sub;
    final String price;
    final Color color;

  const Statementtile({super.key, required this.name, required this.sub, required this.price, required this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
                          title:Text(
                          name,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ) ,
                        subtitle:Text(
                          sub,
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              height: .0
                              ),
                        )  ,
                        trailing:Text(
                          price,
                          style: GoogleFonts.poppins(
                              color: color,
                                height: .0,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        )   ,
                        );
  }
}