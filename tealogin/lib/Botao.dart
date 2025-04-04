import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String nome;

  final Function() funcao;

  const Botao(this.nome, this.funcao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                const Color.fromARGB(255, 195, 178, 228),
              ),
              foregroundColor: WidgetStatePropertyAll(
                const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            onPressed: () {
              funcao();
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("$nome", style: TextStyle(fontSize: 20.0)),
            ),
          ),
        ],
      ),
    );
  }
}
