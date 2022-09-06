import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argsNativo =
        ModalRoute.of(context)?.settings.arguments ?? 'Parametro não encontado';
    final args = Get.arguments ?? 'Parametro não encontado';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebe Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pelo Nativo: $argsNativo'),
            Text('Pelo GetX: $args'),
          ],
        ),
      ),
    );
  }
}
