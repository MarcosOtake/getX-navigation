import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/offAll/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF ALL Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const OffAllPage3(),
                      ),
                      (route) => false);
                },
                child: const Text(
                    'Navegar com pushAndRemoveUntil do  Nativo PAGE3')),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const OffAllPage3(),
                    ),
                    ModalRoute.withName('/OffAllHomePage'));
              },
              child: const Text(
                  'Navegar com pushAndRemoveUntil Excluir Parte da Rota Page 3 '),
            ),
            TextButton(
                onPressed: () {
                  Get.offAll(const OffAllPage3(),
                      predicate: ModalRoute.withName('/OffAllHomePage'));
                },
                child: const Text('Navegar com offAll do GetX PAGE3')),
          ],
        ),
      ),
    );
  }
}
