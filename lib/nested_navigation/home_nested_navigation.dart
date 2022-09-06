import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/nested_navigation/android_page.dart';
import 'package:getx_example/nested_navigation/apple_page.dart';
import 'package:getx_example/nested_navigation/flutter_page.dart';

class HomeNestedNavigation extends StatelessWidget {
  final currentIndex = 0.obs;
  HomeNestedNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: currentIndex.value,
          onTap: (value) {
            //currentIndex.value = value;
            currentIndex(value);
            switch (value) {
              case 0:
                Get.offAllNamed('/', id: 1);
                break;
              case 1:
                Get.offAllNamed('/android', id: 1);
                break;
              case 2:
                Get.offAllNamed('/flutter', id: 1);
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apple), label: 'APPLE'),
            BottomNavigationBarItem(
                icon: Icon(Icons.android), label: 'ANDROID'),
            BottomNavigationBarItem(
                icon: Icon(Icons.flutter_dash), label: 'FLUTTER'),
          ],
        );
      }),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          Transition? transition;
          if (settings.name == '/') {
            transition = Transition.leftToRight;
            page = const ApplePage();
          } else if (settings.name == '/android') {
            transition = Transition.upToDown;
            page = const AndroidPage();
          } else if (settings.name == '/flutter') {
            transition = Transition.rightToLeft;
            page = const FlutterPage();
          } else {
            transition = Transition.fadeIn;
            page = const Center(child: Text('Pagina não encontrada!!!'));
          }

          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
    );
  }
}
