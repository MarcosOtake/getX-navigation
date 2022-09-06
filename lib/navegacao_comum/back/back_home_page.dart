import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/back/back_page1.dart';

class BackHomePage extends StatelessWidget {
  const BackHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(() => const BackPage1()),
              child: const Text('Back Page #1'),
            ),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
