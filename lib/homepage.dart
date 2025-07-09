import 'package:ag_controller/addmenu.dart';
import 'package:ag_controller/home_controller.dart';
import 'package:ag_controller/screenHome.dart';
import 'package:ag_controller/screen_Historico_mov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool showAddMenu = false;
  String selectedOption = 'entradas'; // Pode ser 'entradas' ou 'saidas'

  final List<Widget> pages = [
    Screenhome(), // ou seu widget personalizado
    Center(child: Text('Work')),
    ScreenHistoricoMov(), // sua tela importada
    Center(child: Text('Configurações')),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,

          body: Stack(
            alignment: Alignment.center,
            children: [
              ValueListenableBuilder<int>(
                valueListenable: HomeController.currentIndex,
                builder: (context, index, _) {
                  return Positioned.fill(
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: pages[index],
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 74.sp,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.symmetric(horizontal: 30.sp),
                  child: ValueListenableBuilder<int>(
                    valueListenable: HomeController.currentIndex,
                    builder: (context, currentIndex, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.home_work,
                              size: 25.sp,
                              color:
                                  currentIndex == 0
                                      ? Color(0xff70D0A4)
                                      : const Color(0xff189C6D),
                            ),
                            onPressed:
                                () => HomeController.currentIndex.value = 0,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.work,
                              size: 25.sp,
                              color:
                                  currentIndex == 1
                                      ? Color(0xff70D0A4)
                                      : const Color(0xff189C6D),
                            ),
                            onPressed:
                                () => HomeController.currentIndex.value = 0,
                          ),
                          SizedBox(width: 46.sp),
                          IconButton(
                            icon: Icon(
                              PhosphorIcons.database_fill,
                              size: 25.sp,
                              color:
                                  currentIndex == 2
                                      ? Color(0xff70D0A4)
                                      : const Color(0xff189C6D),
                            ),
                            onPressed:
                                () => HomeController.currentIndex.value = 2,
                          ),
                          IconButton(
                            icon: Icon(
                              PhosphorIcons.gear_fill,
                              size: 25.sp,
                              color:
                                  currentIndex == 3
                                      ? Color(0xff70D0A4)
                                      : const Color(0xff189C6D),
                            ),
                            onPressed:
                                () => HomeController.currentIndex.value = 3,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),

              // Addmenu overlay
              if (showAddMenu)
                Positioned.fill(
                  child: Addmenu(
                    onClose: () {
                      setState(() {
                        showAddMenu = false;
                      });
                    },
                  ),
                ),

              // Botão ADD/REMOVE
              Positioned(
                bottom: 14.sp,
                left: (393 / 2 - 23).sp,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      showAddMenu = !showAddMenu;
                    });
                  },
                  child: Container(
                    width: 46.sp,
                    height: 46.sp,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF189C6D),
                      shape: OvalBorder(),
                    ),
                    child: Center(
                      child: Icon(
                        showAddMenu ? Icons.remove : Icons.add,
                        size: 25.sp,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget CeduleContainer() {
    return Container(
      width: 353.sp,
      height: 56.sp,
      decoration: ShapeDecoration(
        color: const Color(0xFFE9EBFD),
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
                    color: const Color(0xFF292E70),
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
                        color: const Color(0xFF292E70),
                        fontSize: 14.sp,

                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.42,
                      ),
                    ),
                    Text(
                      'Fulano Detawn',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF8083B2),
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
              '-R\$ 1250.78',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: const Color(0xFFFF4E4E),
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
