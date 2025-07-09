import 'package:ag_controller/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screenhome extends StatefulWidget {
  const Screenhome({super.key});

  @override
  State<Screenhome> createState() => _ScreenhomeState();
}

class _ScreenhomeState extends State<Screenhome> {
  String selectedOption =
      'entradas'; // Pode ser 'entradas' ou 'saidas'  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 393.sp,
              height: 400.sp,
              child: Stack(
                children: [
                  Container(
                    width: 393.sp,
                    height: 372.sp,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.50, -0.00),
                        end: Alignment(0.50, 1.00),
                        colors: [
                          const Color(0xFF59FFB2),
                          const Color(0xFF179C6C),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 70.sp),
                        Container(
                          width: 240.sp,
                          height: 30.sp,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFACF8D5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.54),
                            ),
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedOption = 'entradas';
                                  });
                                },
                                child: Container(
                                  width: 120.sp,
                                  height: 30.sp,
                                  decoration: ShapeDecoration(
                                    color:
                                        selectedOption == 'entradas'
                                            ? const Color(0xff189C6D)
                                            : Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.54),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Entradas',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12.sp,

                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.33,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedOption = 'saidas';
                                  });
                                },
                                child: Container(
                                  width: 120.sp,
                                  height: 30.sp,
                                  decoration: ShapeDecoration(
                                    color:
                                        selectedOption == 'saidas'
                                            ? const Color(0xFFFF4E4E)
                                            : Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.54),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Saídas',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: 12.sp,

                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.33,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.sp),
                        Text(
                          'Valor total',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 11.sp,

                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.30,
                          ),
                        ),
                        SizedBox(height: 20.sp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'R',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 22.sp,

                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.66,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\$',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 22.sp,

                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 5.74,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 10.sp),
                            Text(
                              '25,456.98',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 43.sp,

                                fontWeight: FontWeight.w500,
                                letterSpacing: -1.30,
                              ),
                            ),
                            SizedBox(width: 10.sp),
                            Icon(
                              Icons.arrow_downward,
                              size: 25.sp,
                              color: Color(0xffFF4E4E),
                            ),
                          ],
                        ),
                        Text(
                          '+25,72% desde o último mês  ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14.sp,

                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.38,
                          ),
                        ),
                        SizedBox(height: 30.sp),
                        Container(
                          width: 200.sp,
                          height: 35.sp,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF32D337),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.77),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Clique para ver o histórico com todas as entradas',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Positioned(
                      top: 350.sp,

                      child: InkWell(
                        onTap: () {
                          HomeController.currentIndex.value = 2;
                        },
                        child: Container(
                          width: 350.sp,
                          height: 50.sp,
                          decoration: ShapeDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x07000000),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.sp),
                              Icon(
                                Icons.history_outlined,
                                size: 20.sp,
                                color: Color(0xFF595B6B),
                              ),
                              SizedBox(width: 10.sp),
                              Text(
                                'Histórico de movimentações',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  color: const Color(0xFF595B6B),
                                  fontSize: 14.sp,

                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.42,
                                ),
                              ),
                              SizedBox(width: 115.sp),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 20.sp,
                                color: Color(0xFF595B6B),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40.sp),
            // Padding(
            //   padding: EdgeInsets.only(left: 30.sp),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       'Saídas Recentes',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: const Color(0xFF292E70),
            //         fontSize: 16,
            //         fontFamily: 'Roboto',
            //         fontWeight: FontWeight.w500,
            //         letterSpacing: -0.48,
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10.sp),

            // teste
            // CeduleContainer(),
            // SizedBox(height: 5.sp),
            // CeduleContainer(),
            // SizedBox(height: 5.sp),
            // CeduleContainer(),
            // SizedBox(height: 30.sp),
            Padding(
              padding: EdgeInsets.only(left: 30.sp),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Entradas Recentes',
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
            SizedBox(height: 10.sp),

            // teste
            CeduleContainerGreen(),
            SizedBox(height: 5.sp),
            CeduleContainerGreen(),
            SizedBox(height: 5.sp),
            CeduleContainerGreen(),
            SizedBox(height: 5.sp),
            CeduleContainerGreen(),
            SizedBox(height: 5.sp),
            CeduleContainerGreen(),
            SizedBox(height: 5.sp),
            CeduleContainerGreen(),
            SizedBox(height: 5.sp),
            CeduleContainerGreen(),
            SizedBox(height: 90.sp),
          ],
        ),
      ),
    );
  }

  Widget CeduleContainerGreen() {
    return Container(
      width: 353.sp,
      height: 56.sp,
      decoration: ShapeDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.sp),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40.sp,
                  height: 40.sp,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF595B6B),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(width: 15.sp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Empresa Tawn',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF595B6B),
                        fontSize: 14.sp,

                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.42,
                      ),
                    ),
                    Text(
                      'Fulano Detawn',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF8A8C9A),
                        fontSize: 12.sp,

                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.36,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '-R\$ 14550.78',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: const Color(0xff32D338),
                fontSize: 14.sp,

                fontWeight: FontWeight.w500,
                letterSpacing: -0.42,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
