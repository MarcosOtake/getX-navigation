import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/off/off_page3.dart';

class OffPage2 extends StatelessWidget {
  const OffPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const OffPage3()));
                },
                child:
                    const Text('Navegar com pushReplacement do  Nativo PAGE3')),
            TextButton(
                onPressed: () {
                  Get.off(const OffPage3());
                },
                child: const Text('Navegar com off do GetX PAGE3')),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Não coloca na pilha a Pagina 2, assim quando voltar ela vai para a Pagina 1',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
