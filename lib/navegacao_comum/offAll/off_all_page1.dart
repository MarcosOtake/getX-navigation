import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/offAll/off_all_page2.dart';

class OffAllPage1 extends StatelessWidget {
  const OffAllPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF ALL Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OffAllPage2()));
                },
                child: const Text('Navegar com off com o Nativo PAGEALL2')),
            TextButton(
                onPressed: () {
                  Get.to(const OffAllPage2());
                },
                child: const Text('Navegar com off do GetX PAGEALLL2'))
          ],
        ),
      ),
    );
  }
}
