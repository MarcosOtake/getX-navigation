import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParam extends StatelessWidget {
  const QueryParam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Query Param'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ID:${Get.parameters['id']}'),
            Text('NOME: ${Get.parameters['nome']}'),
            Text('SOBRENOME: ${Get.parameters['sobrenome']}'),
          ],
        ),
      ),
    );
  }
}
