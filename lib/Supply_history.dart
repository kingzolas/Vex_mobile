import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SupplyHistory extends StatefulWidget {
  const SupplyHistory({super.key});

  @override
  State<SupplyHistory> createState() => _SupplyHistoryState();
}

class _SupplyHistoryState extends State<SupplyHistory> {
  // --- Variáveis de Estado ---

  // Controla se a lista está expandida ou não
  bool _isExpanded = false;

  // Define a quantidade de itens visíveis no modo recolhido
  final int _initialItemCount = 4;

  // Lista de dados para o histórico (exemplo)
  final List<String> _historyItems = List.generate(
    10, // Total de 10 itens de exemplo
    (index) =>
        'Veículo Hilux B679-028H abasteceu\n100L de Diesel S10 - Item ${index + 1}',
  );

  @override
  Widget build(BuildContext context) {
    // Determina a quantidade de itens a serem exibidos com base no estado
    final int itemCount =
        _isExpanded ? _historyItems.length : _initialItemCount;

    return Container(
      width: 353.sp,
      height: 390.sp,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          // --- CABEÇALHO ---
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Histórico de abastecimento',
                  style: GoogleFonts.roboto(
                    color: const Color(0xFF595B6B),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Exportar em PDF',
                  style: GoogleFonts.roboto(
                    color: const Color(0xFF8A8C9A),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16.sp), // Espaçamento
          // --- LISTA ROLÁVEL ---
          // O Expanded garante que a ListView ocupe todo o espaço vertical restante
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: 20.sp,
              ), // Padding lateral para os itens
              itemCount: itemCount,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: 10.sp,
                  ), // Espaçamento entre os cards
                  child: _card(text: _historyItems[index]),
                );
              },
            ),
          ),

          // --- BOTÃO "VER MAIS / VER MENOS" ---
          // Só mostra o botão se houver mais itens a serem exibidos
          if (_historyItems.length > _initialItemCount)
            InkWell(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _isExpanded ? 'Ver menos' : 'Ver mais',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF189A6B), // Cor de destaque
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.sp),
                    Icon(
                      _isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: const Color(0xFF189A6B),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _card({required String text}) {
    return Container(
      width: 353.sp,
      height: 56.sp,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        shadows: [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 5.80,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(
                color: const Color(0xFF8A8C9A),
                fontSize: 12.sp,

                fontWeight: FontWeight.w600,
                letterSpacing: -0.36,
              ),
            ),
            Text(
              'Verificar\natividade',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: const Color(0xFF189B6C),
                fontSize: 12.sp,

                fontWeight: FontWeight.w600,
                letterSpacing: -0.36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
