import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/back/back_home_page.dart';

class BackPage1 extends StatelessWidget {
  const BackPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Page #1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BackHomePage()));
                },
                child: const Text('Voltar com  Nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const BackHomePage());
                },
                child: const Text('Voltar com Get.back'))
          ],
        ),
      ),
    );
  }
}
