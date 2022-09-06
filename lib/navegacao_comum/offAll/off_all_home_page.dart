import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/offAll/off_all_page1.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF ALL HOME PAGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const OffAllPage1(),
                        settings: const RouteSettings(name: 'OffAllHomePage')),
                  );
                },
                child: const Text('OffAll Page1 com Nativo PAGE1')),
            TextButton(
                onPressed: () {
                  Get.to(const OffAllPage1());
                },
                child: const Text('OffAll Page1 com get.off PAGE1'))
          ],
        ),
      ),
    );
  }
}
