import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartDay extends StatefulWidget {
  const ChartDay({super.key});

  @override
  State<ChartDay> createState() => _ChartDayState();
}

class _ChartDayState extends State<ChartDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.sp,
      height: 306.sp,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.sp),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 10,
            offset: Offset(0, 5),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 20.sp, left: 20.sp),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Gastos diários (últimos 30 dias)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF595B6B),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.48,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
