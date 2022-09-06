import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop('Retorno de Params com Nativo');
                },
                child: const Text('Voltar com  Nativo')),
            TextButton(
                onPressed: () {
                  Get.back(result: 'Retorno de Params com Getx');
                },
                child: const Text('Voltar com Get'))
          ],
        ),
      ),
    );
  }
}
