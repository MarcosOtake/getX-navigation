import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/to/home_page1.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage1()));
                },
                child: const Text('Go to Page from Nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const HomePage1());
                },
                child: const Text('Go to Page from Get'))
          ],
        ),
      ),
    );
  }
}
