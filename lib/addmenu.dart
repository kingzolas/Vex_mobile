import 'package:ag_controller/home_controller.dart';
import 'package:ag_controller/pop_create_colaborador.dart';
import 'package:ag_controller/pop_create_emrpesa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Addmenu extends StatefulWidget {
  final VoidCallback onClose;

  const Addmenu({super.key, required this.onClose});

  @override
  State<Addmenu> createState() => _AddmenuState();
}

class _AddmenuState extends State<Addmenu> {
  int currentIndex = 0;
  bool animate = false;
  bool showContainer = false;
  bool showContainerEmpresa = false;

  @override
  void initState() {
    super.initState();
    // Espera um frame para ativar animação suavemente
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        animate = true;
      });
    });
  }

  double centerLeft = 393 / 2 - 23; // posição do botão central

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(150, 0, 0, 0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.close, size: 24.sp),
                  onPressed: () {
                    setState(() => animate = false);
                    // Delay o close até a animação terminar
                    Future.delayed(Duration(milliseconds: 300), widget.onClose);
                  },
                ),
                SizedBox(height: 20.sp),
              ],
            ),
          ),

          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            bottom: animate ? 104.sp : 14.sp,
            left: animate ? 126.sp : centerLeft.sp,
            child: button(
              ontap: () {
                setState(() {
                  showContainer = true;
                });
              },
              // ontap: () => PopUp_Colaborador_Controller.currentIndexx.value = 0,
              texto: 'Adicionar Funcionário',
              icone: Icons.account_circle,
              cor: Color(0xff292E70),
            ),
          ),

          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            bottom: animate ? 104.sp : 14.sp,
            left: animate ? 222.sp : centerLeft.sp,
            child: button(
              ontap: () {
                setState(() {
                  showContainerEmpresa = true;
                });
              },
              texto: 'Adicionar Empresa',
              icone: Icons.work,
              cor: Color(0xff292E70),
            ),
          ),

          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            bottom: animate ? 40.sp : 14.sp,
            left: animate ? 60.sp : centerLeft.sp,
            child: button(
              ontap: () {},
              texto: 'Adicionar Entradas',
              icone: Icons.arrow_upward,
              cor: Color(0xff32D338),
            ),
          ),

          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            bottom: animate ? 40.sp : 14.sp,
            left: animate ? 288.sp : centerLeft.sp,
            child: button(
              ontap: () {},
              texto: 'Adicionar Saídas',
              icone: Icons.arrow_downward,
              cor: Color(0xffFF4E4E),
            ),
          ),
          AnimatedPositioned(
            duration: 500.ms,
            curve: Curves.easeOut,
            top: showContainer ? 140.sp : MediaQuery.of(context).size.height,
            left: 0,
            right: 0,
            child: PopCreateColaborador(),
          ),
          AnimatedPositioned(
            duration: 500.ms,
            curve: Curves.easeOut,
            top:
                showContainerEmpresa
                    ? 140.sp
                    : MediaQuery.of(context).size.height,
            left: 0,
            right: 0,
            child: PopCreateEmrpesa(),
          ),
        ],
      ),
    );
  }

  Widget button({
    required String texto,
    required IconData icone,
    required Color cor,
    required GestureTapCallback ontap,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            width: 46.sp,
            height: 46.sp,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(),
            ),
            child: Center(child: Icon(icone, size: 20.sp, color: cor)),
          ),
        ),
        SizedBox(
          width: 55.sp,
          child: Text(
            texto,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 10.14.sp,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.24,
            ),
          ),
        ),
      ],
    );
  }
}
