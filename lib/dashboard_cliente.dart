import 'package:ag_controller/Supply_history.dart';
import 'package:ag_controller/alert_center.dart';
import 'package:ag_controller/chart_day.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardCliente extends StatefulWidget {
  const DashboardCliente({super.key});

  @override
  State<DashboardCliente> createState() => _DashboardClienteState();
}

class _DashboardClienteState extends State<DashboardCliente> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> cardItems = [
      cardInfo(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                // Corrigido para EdgeInsets.only
                top: 20.sp,
                left: 20.sp,
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Custo total ',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF595B6B),
                        fontSize: 15.97.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.05,
                        letterSpacing: -0.48,
                      ),
                    ),
                    TextSpan(
                      text: '(mês atual)',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF9B9DAD),
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.05,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // Corrigido para EdgeInsets.only
                top: 10.sp,
                left: 20.sp,
              ),
              child: Text(
                'R\$ 15.765',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF189A6B),
                  fontSize: 25.37.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.05,
                  letterSpacing: -0.76,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // Corrigido para EdgeInsets.only
                top: 20.sp,
                left: 20.sp,
              ),
              child: Text(
                'Limite definido por\ncontrato (R\$ 20.000/mês)',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF799488),
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.05,
                  letterSpacing: -0.24,
                ),
              ),
            ),
          ],
        ),
      ),
      cardInfo(
        child: Padding(
          padding: EdgeInsets.only(left: 20.sp, top: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Litros abastecidos\n',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF595B6B),
                        fontSize: 15.97.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.05,
                        letterSpacing: -0.48,
                      ),
                    ),
                    TextSpan(
                      text: '(mês atual)',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF9A9DAD),
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.34,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                '1.765 L',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF189A6B),
                  fontSize: 25.37.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.05,
                  letterSpacing: -0.76,
                ),
              ),
            ],
          ),
        ),
      ),
      cardInfo(
        child: Padding(
          padding: EdgeInsets.only(top: 20.sp, left: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Consumo médio\n',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF595B6B),
                        fontSize: 15.97.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.05,
                        letterSpacing: -0.48,
                      ),
                    ),
                    TextSpan(
                      text: '(mês atual)',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF9A9DAD),
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.34,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                '7,5 km/L',
                style: GoogleFonts.roboto(
                  color: const Color(0xFF189A6B),
                  fontSize: 25.37.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.05,
                  letterSpacing: -0.76,
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                '-15% desde o último mês ',
                style: GoogleFonts.roboto(
                  color: const Color(0xFFF53F3F),
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.05,
                  letterSpacing: -0.24,
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    return Material(
      color: Color(0xffF5F5F5),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 393.sp,
              height: 274.sp,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.50, -0.00),
                  end: Alignment(0.50, 1.00),
                  colors: [const Color(0xFF59FFB2), const Color(0xFF179C6C)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.sp),
                    bottomRight: Radius.circular(15.sp),
                  ),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 45.sp),
                  Text(
                    'Dashboard Geral',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 16.sp,

                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.48,
                    ),
                  ),
                  SizedBox(height: 25.sp),
                  SizedBox(
                    height: 150.sp, // <-- Ajuste a altura conforme necessário
                    child: ListView.separated(
                      scrollDirection:
                          Axis.horizontal, // Define a rolagem como horizontal
                      itemCount: cardItems.length,
                      itemBuilder: (context, index) {
                        return cardItems[index]; // Retorna o card da lista
                      },
                      separatorBuilder:
                          (context, index) =>
                              SizedBox(width: 10.sp), // Adiciona o espaçamento
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.sp),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: AlertCenter(),
            ),
            SizedBox(height: 20.sp),

            ChartDay(),
            SizedBox(height: 20.sp),
            SupplyHistory(),
          ],
        ),
      ),
    );
  }

  Widget cardInfo({required Widget child}) {
    return Container(
      width: 172.sp,
      height: 133.sp,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/PopUpDashboard3.png'),
        ),
      ),
      child: child,
    );
  }
}
