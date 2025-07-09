// lib/core/services/auth_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_model.dart';

class AuthService {
  static const String _baseUrl = 'http://192.168.0.7:3000/api/v1/auth/login';

  static Future<UserModel> login(String email, String senha) async {
    try {
      print('[AuthService] Tentando login para o e-mail: $email');
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'senha': senha}),
      );
      print(
        '[AuthService] Resposta recebida. Status code: ${response.statusCode}',
      );
      print('[AuthService] Body da resposta: ${response.body}');

      final responseBody = jsonDecode(response.body);

      if (response.statusCode == 200 && responseBody['token'] != null) {
        final token = responseBody['token'];
        final user = UserModel.fromJson(responseBody['data']['user'], token);

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('user', jsonEncode(user.toJson()));

        print(
          '[AuthService] Login realizado com sucesso para o usuário: ${user.email}',
        );
        return user;
      } else {
        final errorMessage = responseBody['message'] ?? 'Erro ao fazer login.';
        print('[AuthService] Falha no login: $errorMessage');
        throw Exception(errorMessage);
      }
    } catch (e) {
      print('[AuthService] Erro durante o login: ${e.toString()}');
      // Para capturar possíveis problemas de rede ou JSON
      throw Exception('Erro de conexão ou resposta inválida: ${e.toString()}');
    }
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user');
    print(
      '[AuthService] Usuário deslogado e dados removidos do SharedPreferences',
    );
  }

  static Future<UserModel?> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userString = prefs.getString('user');

    if (userString != null) {
      try {
        final json = jsonDecode(userString);
        print(
          '[AuthService] Usuário atual carregado do SharedPreferences: ${json['email']}',
        );
        return UserModel.fromJson(json, json['token']);
      } catch (e) {
        print('[AuthService] Erro ao carregar usuário atual: ${e.toString()}');
        return null;
      }
    }
    print('[AuthService] Nenhum usuário encontrado no SharedPreferences');
    return null;
  }
}
