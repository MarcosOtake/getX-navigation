import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.flutter_dash,
          color: Colors.blue,
          size: 150,
        ),
      ),
    );
  }
}
