import 'package:ag_controller/dashboard_cliente.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ag_controller/core/routes/app_routes.dart';
import 'package:ag_controller/modules/login/login_page.dart';
import 'package:ag_controller/homepage.dart';
// import 'package:ag_controller/pages/funcionario_home.dart';
// import 'package:ag_controller/pages/cliente_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // home: DashboardCliente(),
          initialRoute: AppRoutes.login,
          routes: {
            AppRoutes.login: (context) => const LoginPage(),
            AppRoutes.homeAdmin: (context) => const Homepage(),
            // AppRoutes.homeFuncionario: (context) => const FuncionarioHome(),
            AppRoutes.homeCliente: (context) => const DashboardCliente(),
          },
        );
      },
    );
  }
}
