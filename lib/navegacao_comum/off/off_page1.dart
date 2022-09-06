import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/off/off_page2.dart';

class OffPage1 extends StatelessWidget {
  const OffPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OffPage2()));
                },
                child: const Text('Navegar com off com o Nativo PAGE2')),
            TextButton(
                onPressed: () {
                  Get.to(const OffPage2());
                },
                child: const Text('Navegar com off do GetX PAGE2'))
          ],
        ),
      ),
    );
  }
}
