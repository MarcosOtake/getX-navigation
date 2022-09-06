import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio Parâmetros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/envio-parametros/argumets', arguments: {
                  "nome": "Marcos",
                  "sobrenome": "Otake",
                });
              },
              child: const Text('Argumetos'),
            ),
            ElevatedButton(
              onPressed: () {
                // se precisar muito de espaço na url faça um encode como abaixo!!!!
                final param = Uri.encodeFull('marcos otake');
                Get.toNamed('/envio-parametros/path-param/$param/obrigatorio');
              },
              child: const Text('Path Param'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                    '/envio-parametros/query-param?nome=marcos&id=00001&sobrenome=otake');
              },
              child: const Text('Query Param'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/envio-parametros/query-param', parameters: {
                  'id': '0001',
                  'nome': 'Marcos por Map',
                  'sobrenome': 'Otake por Map'
                });
              },
              child: const Text('Query Param por Parameters'),
            ),
          ],
        ),
      ),
    );
  }
}
