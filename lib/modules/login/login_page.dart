import 'package:ag_controller/core/routes/app_routes.dart';
import 'package:ag_controller/core/services/auth_service.dart';
import 'package:ag_controller/homepage.dart';
import 'package:ag_controller/pop_create_conta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  bool loading = false;

  bool showContainer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 40.sp),
              Center(
                child: Container(
                  height: 75.sp,
                  width: 215.sp,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/logo.png"),
                    ),
                  ),
                ),
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                      Colors.black,
                      Colors.transparent,
                    ],
                    stops: [0.0, 0.2, 0.9, 1.0],
                  ).createShader(bounds);
                },
                blendMode:
                    BlendMode
                        .dstIn, // Mantém apenas onde o gradiente estiver visível
                child: Container(
                  height: 570.sp,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/geminiImagem.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    showContainer = true;
                  });
                },
                child: Container(
                  width: 350.sp,
                  height: 50.sp,
                  decoration: ShapeDecoration(
                    gradient: RadialGradient(
                      center: Alignment(0, -0.9),
                      radius: 4.81,
                      colors: [
                        const Color(0xFF2EFF9D),
                        const Color(0xFF179D6C),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Entrar com minha conta',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.sp),
              Container(
                width: 350.sp,
                height: 50.sp,
                decoration: ShapeDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.49, 0.04),
                    radius: 0.81,
                    colors: [const Color(0xFF595B6B), const Color(0xFF595B6B)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Criar conta',
                    style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// Container animado de baixo até 140.sp do topo
          AnimatedPositioned(
            duration: 500.ms,
            curve: Curves.easeOut,
            top: showContainer ? 140.sp : MediaQuery.of(context).size.height,
            left: 0,
            right: 0,
            child: Container(
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
              child: Column(
                children: [
                  SizedBox(height: 20.sp),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showContainer = false; // Faz o container desaparecer
                      });
                    },
                    child: Transform.rotate(
                      angle: -90 * 3.1415926535 / 180, // 90 graus em radianos
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 40.sp,
                        color: const Color(0xff0B6F4B),
                      ),
                    ),
                  ),
                  SizedBox(height: 90.sp),
                  Text(
                    'Seja bem-vindo',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 32.58.sp,

                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.98,
                    ),
                  ),
                  Text(
                    'Faça login com uma conta existente ou\nclique na opção abaixo para criar uma conta',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: const Color(0xFFE1DFDF),
                      fontSize: 15.sp,

                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.42,
                    ),
                  ),
                  SizedBox(height: 90.sp),
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
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
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
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        width: 300.sp,
                        child: TextFormField(
                          controller: senhaController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              size: 20.sp,
                              color: Color(0xffFFD900),
                            ),
                            border: InputBorder.none,
                            hintText: 'Senha',
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
                  Padding(
                    padding: EdgeInsets.only(right: 30.sp),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Esqueci a senha',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFFFFD800),
                          fontSize: 13.27.sp,

                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.sp),
                  InkWell(
                    onTap: () async {
                      if (loading) return;
                      setState(() => loading = true);

                      if (emailController.text.trim().isEmpty ||
                          senhaController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Preencha o e-mail e a senha'),
                          ),
                        );
                        setState(() => loading = false);
                        return;
                      }

                      try {
                        final user = await AuthService.login(
                          emailController.text.trim(),
                          senhaController.text,
                        );

                        switch (user.role.toUpperCase()) {
                          case 'ADMIN':
                          case 'ADMIN_POSTO': // <- adicionado aqui
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (_) => Homepage()),
                            );
                            break;
                          case 'FRENTISTA':
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.homeFuncionario,
                            );
                            break;
                          case 'GESTOR_EMPRESA':
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.homeCliente,
                            );
                            break;
                          default:
                            throw Exception(
                              'Tipo de usuário desconhecido: ${user.role}',
                            );
                        }
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Erro: ${e.toString().replaceFirst("Exception: ", "")}',
                            ),
                          ),
                        );
                      } finally {
                        setState(() => loading = false);
                      }
                    },

                    child: Container(
                      width: 353.sp,
                      height: 78.sp,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.sp),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Entrar',
                          style: GoogleFonts.roboto(
                            color: const Color(0xFF179C6C),
                            fontSize: 15.71.sp,

                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 130.sp),
                  SizedBox(
                    width: 318.sp,
                    height: 19.sp,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '•••••••••••••',
                            style: TextStyle(
                              color: const Color(0x66CCCCCC),
                              fontSize: 14.97,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 2.54,
                            ),
                          ),
                          TextSpan(
                            text: '•',
                            style: TextStyle(
                              color: const Color(0x66CCCCCC),
                              fontSize: 14.97,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.97,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Crie uma conta',
                            style: TextStyle(
                              color: const Color(0xFFFFD800),
                              fontSize: 14.97,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.97,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: '••••••••••••••',
                            style: TextStyle(
                              color: const Color(0x66CCCCCC),
                              fontSize: 14.97,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 2.54,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.97,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.15,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.97,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
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
          AnimatedPositioned(
            duration: 500.ms,
            curve: Curves.easeOut,
            top: showContainer ? 140.sp : MediaQuery.of(context).size.height,
            left: 0,
            right: 0,
            child: PopCreateConta(),
          ),
        ],
      ),
    );
  }
}
