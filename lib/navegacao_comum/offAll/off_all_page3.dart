import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffAllPage3 extends StatelessWidget {
  const OffAllPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF ALL Page3'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Voltar Nativo'),
          ),
          ElevatedButton(
            onPressed: () => Get.back(),
            child: const Text('Voltar'),
          ),
        ],
      )),
    );
  }
}
