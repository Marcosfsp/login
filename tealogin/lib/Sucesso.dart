import 'package:flutter/material.dart';
import 'Botao.dart';
import 'Tela.dart';

class Sucesso extends StatefulWidget {
  final String nomeUsuario;

  const Sucesso({super.key, required this.nomeUsuario});

  @override
  State<Sucesso> createState() => _SucessoState();
}

class _SucessoState extends State<Sucesso> {
  final _nomeController = TextEditingController();
  final _enderecoController = TextEditingController();
  final _cursoController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _estadoController = TextEditingController();
  final _paisController = TextEditingController();

  void _mostrarDados() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text("Dados Cadastrados"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Nome: ${_nomeController.text}"),
                  Text("Endereço: ${_enderecoController.text}"),
                  Text("Curso: ${_cursoController.text}"),
                  Text("Cidade: ${_cidadeController.text}"),
                  Text("Estado: ${_estadoController.text}"),
                  Text("País: ${_paisController.text}"),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Fechar"),
              ),
            ],
          ),
    );
  }

  void _voltarParaLogin() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const Tela()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Correcto"),
        backgroundColor: const Color.fromARGB(255, 195, 178, 228),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Seja bem-vindo(a), ${widget.nomeUsuario}!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildTextField("Nome Completo", _nomeController),
            _buildTextField("Endereço", _enderecoController),
            _buildTextField("Curso", _cursoController),
            _buildTextField("Cidade", _cidadeController),
            _buildTextField("Estado", _estadoController),
            _buildTextField("País", _paisController),
            const SizedBox(height: 20),
            Botao("Salvar", _mostrarDados),
            const SizedBox(height: 10),
            Botao("Voltar para o Login", _voltarParaLogin),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
