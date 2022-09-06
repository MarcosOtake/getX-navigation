import 'package:flutter/material.dart';

class MiddlewarePage extends StatelessWidget {
  MiddlewarePage({Key? key}) : super(key: key) {
    debugPrint('Criando a pagina de MiddlewarePage');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Criando o build de MiddlewarePage');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Middleware Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Botão',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
