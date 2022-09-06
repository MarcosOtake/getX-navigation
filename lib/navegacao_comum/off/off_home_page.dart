import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/off/off_page1.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF HOME PAGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OffPage1()));
                },
                child: const Text('Off Page1 com Nativo PAGE1')),
            TextButton(
                onPressed: () {
                  Get.to(const OffPage1());
                },
                child: const Text('Off Page1 com get.off PAGE1'))
          ],
        ),
      ),
    );
  }
}
