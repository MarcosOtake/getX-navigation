import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/send_params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando Parâmetros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SendParamsPage1(),
                      settings: const RouteSettings(
                          arguments: 'Parametro pelo Nativo')));
                },
                child: const Text('Enviar params com  Nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const SendParamsPage1(),
                      arguments: 'Parametro pelo Get');
                },
                child: const Text('Enviar params com Get'))
          ],
        ),
      ),
    );
  }
}
