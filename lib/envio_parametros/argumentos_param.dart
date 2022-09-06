import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentosParam extends StatelessWidget {
  const ArgumentosParam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> map = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Argumentos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(map['nome'] ?? 'Nome não encontrado'),
            Text(map['sobrenome'] ?? 'Sobrenome não encontrado'),
          ],
        ),
      ),
    );
  }
}
