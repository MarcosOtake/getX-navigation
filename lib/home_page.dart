import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/inicial/page1');
                },
                child: const Text('Inicial')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/paginanaoencontrada');
                },
                child: const Text('Página Não Encontrada')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/envio-parametros');
                },
                child: const Text('Envio de Parâmetros')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/middleware-page');
                },
                child: const Text('Middleware')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/nested-navigation');
                },
                child: const Text('Nested Navigation')),
          ],
        ),
      ),
    );
  }
}
