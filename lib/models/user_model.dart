// lib/models/user_model.dart

class UserModel {
  final String id;
  final String nome;
  final String email;
  final String role;
  final String token;

  UserModel({
    required this.id,
    required this.nome,
    required this.email,
    required this.role,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json, String token) {
    return UserModel(
      id: json['id'],
      nome: json['nome'],
      email: json['email'],
      role: json['role'],
      token: token,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'role': role,
      'token': token,
    };
  }
}
