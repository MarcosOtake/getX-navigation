import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/to/home_page2.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page1'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Get.to(() => const HomePage2());
        },
        child: const Text('Ir para a Page 2'),
      )),
    );
  }
}
