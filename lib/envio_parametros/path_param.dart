import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathParam extends StatelessWidget {
  const PathParam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Param'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.parameters['nome']!),
        ],
      )),
    );
  }
}
