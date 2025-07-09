import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PopCreateColaborador extends StatefulWidget {
  const PopCreateColaborador({super.key});

  @override
  State<PopCreateColaborador> createState() => _PopCreateColaboradorState();
}

class _PopCreateColaboradorState extends State<PopCreateColaborador> {
  bool showContainer = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750.sp,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xFF3F45A7), const Color(0xFF282D6F)],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x54000000),
            blurRadius: 17.10,
            offset: Offset(0, -8),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.sp),
        child: Column(
          children: [
            SizedBox(height: 20.sp),

            Transform.rotate(
              angle: -90 * 3.1415926535 / 180, // 90 graus em radianos
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 40.sp,
                color: const Color(0xff999EDA),
              ),
            ),
            SizedBox(height: 30.sp),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Informações do funcionário',
                style: TextStyle(
                  color: const Color(0xFFE9EBFD),
                  fontSize: 15.71,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10.sp),
            Container(
              width: 353.sp,
              height: 48.sp,
              decoration: ShapeDecoration(
                color: const Color(0xFF5F64AE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Container(
                  width: 290.sp,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nome',
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.white.withValues(alpha: 64),
                        fontSize: 15.71.sp,

                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.sp),
            Container(
              width: 353.sp,
              height: 48.sp,
              decoration: ShapeDecoration(
                color: const Color(0xFF5F64AE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Container(
                  width: 290.sp,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'CPF',
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.white.withValues(alpha: 64),
                        fontSize: 15.71.sp,

                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.sp),
            Container(
              width: 353.sp,
              height: 48.sp,
              decoration: ShapeDecoration(
                color: const Color(0xFF5F64AE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Container(
                  width: 290.sp,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Telefone',
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.white.withValues(alpha: 64),
                        fontSize: 15.71.sp,

                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.sp),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Data de Nascimento',
                style: TextStyle(
                  color: const Color(0xFFE9EBFD),
                  fontSize: 15.71,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 94.sp,
                  height: 48.sp,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF5F64AE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.sp),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 50.sp,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Dia',
                          hintStyle: GoogleFonts.roboto(
                            color: Colors.white.withValues(alpha: 64),
                            fontSize: 15.71.sp,

                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 114.sp,
                  height: 48.sp,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF5F64AE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.sp),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 50.sp,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mês',
                          hintStyle: GoogleFonts.roboto(
                            color: Colors.white.withValues(alpha: 64),
                            fontSize: 15.71.sp,

                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 114.sp,
                  height: 48.sp,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF5F64AE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.sp),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 50.sp,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ano',
                          hintStyle: GoogleFonts.roboto(
                            color: Colors.white.withValues(alpha: 64),
                            fontSize: 15.71.sp,

                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.sp),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Informações complementares',
                style: TextStyle(
                  color: const Color(0xFFE9EBFD),
                  fontSize: 15.71,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10.sp),
            Container(
              width: 353.sp,
              height: 48.sp,
              decoration: ShapeDecoration(
                color: const Color(0xFF5F64AE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Container(
                  width: 290.sp,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Cargo',
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.white.withValues(alpha: 64),
                        fontSize: 15.71.sp,

                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.sp),
            Container(
              width: 352.sp,
              height: 48.sp,
              decoration: ShapeDecoration(
                gradient: RadialGradient(
                  center: Alignment(0.50, 0.15),
                  radius: 0.68,
                  colors: [const Color(0xFFFFE96B), const Color(0xFFFFB508)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.sp),
                ),
              ),
              child: Center(
                child: Text(
                  'Criar perfil de funcionário',
                  style: TextStyle(
                    color: const Color(0xFF353A83),
                    fontSize: 15.71.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
