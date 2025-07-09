import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertCenter extends StatefulWidget {
  const AlertCenter({super.key});

  @override
  State<AlertCenter> createState() => _AlertCenterState();
}

class _AlertCenterState extends State<AlertCenter> {
  final List<String> alertTexts = [
    'Veículo [XYZ-9876] abasteceu fora do horário com...',
    'Consumo do veículo [ABC-1234] está 20% acima d...',
    'Seu contrato expira em 5 dias',
    'Consumo do veículo [ABC-1234] está 20% acima d...',
    'Seu contrato expira em 5 dias',
    // Adicione mais alertas aqui se necessário
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Central de alertas',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: const Color(0xFF595B6B),
                    fontSize: 16.sp,

                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.48,
                  ),
                ),
                Container(
                  width: 70.sp,
                  child: Row(
                    children: [
                      Text(
                        'Ver todos',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF8A8C9A),
                          fontSize: 12.sp,

                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.36,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff8B8D9B),
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),
          Container(
            width: 353.sp,
            height: 126.sp,
            padding: EdgeInsets.symmetric(
              horizontal: 15.sp,
            ), // Removi o padding vertical daqui
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.sp),
              ),
              shadows: const [
                // Use 'const' para melhor performance
                BoxShadow(
                  color: Color(0x07000000),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: ListView.separated(
              padding: EdgeInsets.zero, // <-- A SOLUÇÃO PRINCIPAL ESTÁ AQUI
              itemCount: alertTexts.length,
              itemBuilder: (context, index) {
                return _AlertInfo(texto: alertTexts[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.sp);
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _AlertInfo({required String texto}) {
  return Container(
    width: 310.sp,
    height: 20.sp,
    child: Row(
      children: [
        Icon(Icons.error, color: Color(0xffF64040), size: 15.sp),
        SizedBox(width: 10.sp),
        Text(
          texto,
          style: GoogleFonts.roboto(
            color: const Color(0xFF8A8C9A),
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
