import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/navegacao_comum/await_params/await_params_home_page.dart';
import 'package:getx_example/navegacao_comum/back/back_home_page.dart';
import 'package:getx_example/navegacao_comum/off/off_home_page.dart';
import 'package:getx_example/navegacao_comum/offAll/off_all_home_page.dart';
import 'package:getx_example/navegacao_comum/send_params/send_params_home_page.dart';
import 'package:getx_example/navegacao_comum/to/to_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegação Comum'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Get.to(() => const ToHomePage()),
                child: const Text('Navegação ( Get.to )')),
            ElevatedButton(
                onPressed: () => Get.to(() => const BackHomePage()),
                child: const Text('Navegação ( Get.back )')),
            ElevatedButton(
                onPressed: () => Get.to(() => const OffHomePage()),
                child: const Text(
                    'Navegação ( Off -> of(context).pushReplacement)')),
            ElevatedButton(
                onPressed: () => Get.to(() => const OffAllHomePage()),
                child:
                    const Text('Navegação ( OffAll -> pushAndRemoveUntil )')),
            ElevatedButton(
                onPressed: () => Get.to(() => const SendParamsHomePage()),
                child: const Text('Navegação ( Enviando Parâmetros )')),
            ElevatedButton(
                onPressed: () => Get.to(() => const AwaitParamsHomePage()),
                child: const Text('Navegação ( Await Parâmetros )')),
          ],
        ),
      ),
    );
  }
}
