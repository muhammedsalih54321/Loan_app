import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_app/ui/components/bottomsheet1.dart';
import 'package:loan_app/ui/components/cardtile1.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {

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
              height: 30.h,
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
                      'Loan Limit',
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
                      '100%',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 15.w,
                    child: Text(
                      '\$10,000.00 ',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 170.w,
                    child: Text(
                      'Request for \$5,500.00',
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
                      widgetIndicator: CircleAvatar(
                        radius: 7.r,
                        backgroundColor: Colors.black,
                      ),
                      width: 330.0,
                      lineHeight: 6.0,
                      percent: 0.2,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.black,
                    ),
                  ),
                  Positioned(
                    top: 110.h,
                    left: 150.w,
                    child: Text(
                      'Request for Loan',
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
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    topRight: Radius.circular(30.r))),
                            context: context,
                            builder: (context) {
                              return Bottomsheet1();
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
              height: 318.7.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'How do you want to use your limit?',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Cardtile(name: 'Emergency Bills'),
                    Cardtile(name: 'Food and Shopping'),
                    Cardtile(name: 'Others')
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


// class RPSCustomPainter extends CustomPainter{
  
//   @override
//   void paint(Canvas canvas, Size size) {
    
    

//   // Layer 1
  
//   Paint paint_fill_0 = Paint()
//       ..color = const Color.fromARGB(255, 124, 4, 4)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width*0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
     
         
//     Path path_0 = Path();
//     path_0.moveTo(size.width*0.1388889,size.height*0.0125000);
//     path_0.lineTo(size.width*0.1694444,size.height*0.1388889);
//     path_0.lineTo(size.width*0.2361111,size.height*0.1333333);
//     path_0.lineTo(size.width*0.2444444,size.height*0.1347222);
//     path_0.lineTo(size.width*0.2472222,size.height*0.0805556);
//     path_0.lineTo(size.width*0.2444444,size.height*0.0583333);
//     path_0.lineTo(size.width*0.2472222,size.height*0.0388889);
//     path_0.lineTo(size.width*0.2472222,size.height*0.0347222);
//     path_0.lineTo(size.width*0.2472222,size.height*0.0291667);
//     path_0.lineTo(size.width*0.2472222,size.height*0.0236111);
//     path_0.lineTo(size.width*0.2305556,size.height*0.0055556);
//     path_0.lineTo(size.width*0.2277778,size.height*0.0055556);
//     path_0.lineTo(size.width*0.1250000,size.height*0.3541667);

//     canvas.drawPath(path_0, paint_fill_0);
  

//   // Layer 1
  
//   Paint paint_stroke_0 = Paint()
//       ..color = const Color.fromARGB(239, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width*0.14
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
     
         
    
//     canvas.drawPath(path_0, paint_stroke_0);
  
    
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
  
// }
//  SizedBox(
//       height: 200.h,
//       width: 200.w,
//       child: CustomPaint(
      
//         painter: RPSCustomPainter(),
//       ),
//     ),
