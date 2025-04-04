import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'Sucesso.dart';
import 'Botao.dart';
import 'Tela.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      home: Tela(),
    );
  }
}
