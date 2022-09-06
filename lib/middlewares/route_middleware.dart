import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddleware extends GetMiddleware {
  RouteMiddleware({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando middleware onPageCalled');
    return super.onPageCalled(page);
    // return GetPage(name: '/inicial/page1', page: () => const Page1());
  }

  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('Executando middleware onPageBuilt');
    //return super.onPageBuilt(page);
    return Theme(
      data: ThemeData.dark(),
      child: page,
    );
  }

  @override
  RouteSettings? redirect(String? route) {
    // if (route == '/middleware-page') {
    if (route != '/middleware-page') {
      return const RouteSettings(name: '/acessDenied');
    } else {
      return null;
    }
  }

  @override
  void onPageDispose() {
    debugPrint('Executando middleware onPageDispose');
    super.onPageDispose();
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    debugPrint('Executando middleware onBindingsStart');
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    debugPrint('Executando middleware onPageBuildStart');
    return super.onPageBuildStart(page);
  }
}
