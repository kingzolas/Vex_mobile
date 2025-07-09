import 'package:ag_controller/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHistoricoMov extends StatefulWidget {
  const ScreenHistoricoMov({super.key});

  @override
  State<ScreenHistoricoMov> createState() => _ScreenHistoricoMovState();
}

class _ScreenHistoricoMovState extends State<ScreenHistoricoMov> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 30.sp,
        color: Color(0xffF5F5F5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.sp, left: 20.sp),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        HomeController.currentIndex.value = 0;
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25.sp,
                        color: Color(0xff999EDA),
                      ),
                    ),
                    Text(
                      'Total de Movimentações',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF292E70),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.sp),
              Container(
                width: 353.sp,
                height: 35.sp,
                decoration: ShapeDecoration(
                  color: const Color(0xE5E3E4EC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.sp),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.sp),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Buscar Lançamentos',
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        size: 25.sp,
                        color: Color(0xffAAAABE),
                      ),
                      hintStyle: GoogleFonts.inter(
                        color: const Color(0xFFAAAABE),
                        fontSize: 15.sp,

                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.36,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.sp),
              CeduleExample(),
              SizedBox(height: 5.sp),
              CeduleExample(),
              SizedBox(height: 15.sp),
              CeduleExample(),
              SizedBox(height: 5.sp),
              CeduleExample(),
              SizedBox(height: 15.sp),
              CeduleExample(),
              SizedBox(height: 5.sp),
              CeduleExample(),
              SizedBox(height: 15.sp),
              CeduleExample(),
              SizedBox(height: 5.sp),
              CeduleExample(),
              SizedBox(height: 15.sp),
              CeduleExample(),
              SizedBox(height: 5.sp),
              CeduleExample(),
              SizedBox(height: 15.sp),
              CeduleExample(),
              SizedBox(height: 5.sp),
              CeduleExample(),
              SizedBox(height: 15.sp),
              CeduleExample(),
              SizedBox(height: 5.sp),
              CeduleExample(),
              SizedBox(height: 15.sp),
              CeduleExample(),
              SizedBox(height: 5.sp),
              CeduleExample(),
              SizedBox(height: 90.sp),
            ],
          ),
        ),
      ),
    );
  }

  // Widget CeduleContainerGreen() {
  //   return Container(
  //     width: 353.sp,
  //     height: 56.sp,
  //     decoration: ShapeDecoration(
  //       color: const Color(0xFFE9EBFD),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(11.sp),
  //       ),
  //     ),
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 10.sp),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Row(
  //             children: [
  //               Container(
  //                 width: 40.sp,
  //                 height: 40.sp,
  //                 decoration: ShapeDecoration(
  //                   color: const Color(0xFF292E70),
  //                   shape: OvalBorder(),
  //                 ),
  //               ),
  //               SizedBox(width: 15.sp),
  //               Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Text(
  //                     'Empresa Tawn',
  //                     textAlign: TextAlign.center,
  //                     style: GoogleFonts.roboto(
  //                       color: const Color(0xFF292E70),
  //                       fontSize: 14.sp,

  //                       fontWeight: FontWeight.w500,
  //                       letterSpacing: -0.42,
  //                     ),
  //                   ),
  //                   Text(
  //                     'Fulano Detawn',
  //                     textAlign: TextAlign.center,
  //                     style: GoogleFonts.roboto(
  //                       color: const Color(0xFF8083B2),
  //                       fontSize: 12.sp,

  //                       fontWeight: FontWeight.w400,
  //                       letterSpacing: -0.36,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //           Text(
  //             '-R\$ 14550.78',
  //             textAlign: TextAlign.center,
  //             style: GoogleFonts.roboto(
  //               color: const Color(0xff32D338),
  //               fontSize: 14.sp,

  //               fontWeight: FontWeight.w500,
  //               letterSpacing: -0.42,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget CeduleContainerGreen2() {
  //   return Column(
  //     children: [
  //       Container(
  //         width: 353.sp,
  //         height: 56.sp,
  //         decoration: ShapeDecoration(
  //           color: const Color(0xFFE9EBFD),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(10.sp),
  //               topRight: Radius.circular(10.sp),
  //             ),
  //           ),
  //         ),

  //         child: Padding(
  //           padding: EdgeInsets.symmetric(horizontal: 10.sp),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Row(
  //                 children: [
  //                   Container(
  //                     width: 40.sp,
  //                     height: 40.sp,
  //                     decoration: ShapeDecoration(
  //                       color: const Color(0xFF292E70),
  //                       shape: OvalBorder(),
  //                     ),
  //                   ),
  //                   SizedBox(width: 15.sp),
  //                   Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       Text(
  //                         'Empresa Tawn',
  //                         textAlign: TextAlign.center,
  //                         style: GoogleFonts.roboto(
  //                           color: const Color(0xFF292E70),
  //                           fontSize: 14.sp,

  //                           fontWeight: FontWeight.w500,
  //                           letterSpacing: -0.42,
  //                         ),
  //                       ),
  //                       Text(
  //                         'Fulano Detawn',
  //                         textAlign: TextAlign.center,
  //                         style: GoogleFonts.roboto(
  //                           color: const Color(0xFF8083B2),
  //                           fontSize: 12.sp,

  //                           fontWeight: FontWeight.w400,
  //                           letterSpacing: -0.36,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //               Text(
  //                 '-R\$ 14550.78',
  //                 textAlign: TextAlign.center,
  //                 style: GoogleFonts.roboto(
  //                   color: const Color(0xff32D338),
  //                   fontSize: 14.sp,

  //                   fontWeight: FontWeight.w500,
  //                   letterSpacing: -0.42,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //       Container(
  //         width: 353.sp,
  //         height: 170.sp,
  //         decoration: ShapeDecoration(
  //           color: const Color(0xFF292E70),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.only(
  //               bottomLeft: Radius.circular(11),
  //               bottomRight: Radius.circular(11),
  //             ),
  //           ),
  //         ),
  //         child: Padding(
  //           padding: EdgeInsets.all(15.sp),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text.rich(
  //                 TextSpan(
  //                   children: [
  //                     TextSpan(
  //                       text: 'Quantidade:',
  //                       style: GoogleFonts.roboto(
  //                         color: const Color(0xB28084B3),
  //                         fontSize: 14.sp,

  //                         fontWeight: FontWeight.w400,
  //                         letterSpacing: -0.36,
  //                       ),
  //                     ),
  //                     TextSpan(
  //                       text: ' 128 Litros',
  //                       style: GoogleFonts.roboto(
  //                         color: const Color(0xFF9DA1D4),
  //                         fontSize: 14.sp,

  //                         fontWeight: FontWeight.w400,
  //                         letterSpacing: -0.36,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //               SizedBox(height: 10.sp),
  //               Text.rich(
  //                 TextSpan(
  //                   children: [
  //                     TextSpan(
  //                       text: 'Produto:',
  //                       style: GoogleFonts.roboto(
  //                         color: const Color(0xB28084B3),
  //                         fontSize: 14.sp,

  //                         fontWeight: FontWeight.w400,
  //                         letterSpacing: -0.36,
  //                       ),
  //                     ),
  //                     TextSpan(
  //                       text: ' Gasolina Comum',
  //                       style: GoogleFonts.roboto(
  //                         color: const Color(0xFF9DA1D4),
  //                         fontSize: 14.sp,

  //                         fontWeight: FontWeight.w400,
  //                         letterSpacing: -0.36,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //               SizedBox(height: 10.sp),
  //               Text.rich(
  //                 TextSpan(
  //                   children: [
  //                     TextSpan(
  //                       text: 'Veículo:',
  //                       style: GoogleFonts.roboto(
  //                         color: const Color(0xB28084B3),
  //                         fontSize: 14.sp,

  //                         fontWeight: FontWeight.w400,
  //                         letterSpacing: -0.36,
  //                       ),
  //                     ),
  //                     TextSpan(
  //                       text: ' Honda Cappucina Balerina',
  //                       style: GoogleFonts.roboto(
  //                         color: const Color(0xFF9DA1D4),
  //                         fontSize: 14.sp,

  //                         fontWeight: FontWeight.w400,
  //                         letterSpacing: -0.36,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //               SizedBox(height: 10.sp),
  //               SizedBox(
  //                 width: 333.sp,
  //                 child: Text.rich(
  //                   TextSpan(
  //                     children: [
  //                       TextSpan(
  //                         text: 'Descrição:',
  //                         style: GoogleFonts.roboto(
  //                           color: const Color(0xB28084B3),
  //                           fontSize: 14.sp,

  //                           fontWeight: FontWeight.w400,
  //                           letterSpacing: -0.36,
  //                         ),
  //                       ),
  //                       TextSpan(
  //                         text:
  //                             ' Fulano Detawn comprou tralala trelele, bombardiro crocodilo.',
  //                         style: GoogleFonts.roboto(
  //                           color: const Color(0xFF9DA1D4),
  //                           fontSize: 14.sp,

  //                           fontWeight: FontWeight.w400,
  //                           letterSpacing: -0.36,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   textAlign: TextAlign.left,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}

class CeduleExample extends StatefulWidget {
  @override
  _CeduleExampleState createState() => _CeduleExampleState();
}

class _CeduleExampleState extends State<CeduleExample>
    with TickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              // Parte sempre visível
              Container(
                width: 353.sp,
                height: 56.sp,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(11.sp),
                      bottom: Radius.circular(isExpanded ? 0 : 11.sp),
                    ),
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
                            decoration: const ShapeDecoration(
                              color: Color(0xFF595B6B),
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
                                style: GoogleFonts.roboto(
                                  color: Color(0xFF595B6B),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.42,
                                ),
                              ),
                              Text(
                                'Fulano Detawn',
                                style: GoogleFonts.roboto(
                                  color: Color(0xFF8A8C9A),
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
              ),

              // Parte expandida
              if (isExpanded)
                Container(
                  width: 353.sp,
                  height: 170.sp,
                  decoration: ShapeDecoration(
                    color: Color(0xFF595B6B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(11.sp),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildRichText('Quantidade:', ' 128 Litros'),
                        SizedBox(height: 10.sp),
                        buildRichText('Produto:', ' Gasolina Comum'),
                        SizedBox(height: 10.sp),
                        buildRichText('Veículo:', ' Honda Cappucina Balerina'),
                        SizedBox(height: 10.sp),
                        SizedBox(
                          width: 333.sp,
                          child: buildRichText(
                            'Descrição:',
                            ' Fulano Detawn comprou tralala trelele, bombardiro crocodilo.',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRichText(String label, String value) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: label,
            style: GoogleFonts.roboto(
              color: const Color.fromARGB(177, 255, 255, 255),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.36,
            ),
          ),
          TextSpan(
            text: value,
            style: GoogleFonts.roboto(
              color: const Color(0xFF9DA1D4),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.36,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.left,
    );
  }
}
