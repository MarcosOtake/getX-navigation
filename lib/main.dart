import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/envio_parametros/envio_parametros_home_page.dart';
import 'package:getx_example/envio_parametros/path_param.dart';
import 'package:getx_example/envio_parametros/query_param.dart';
import 'package:getx_example/envio_parametros/argumentos_param.dart';
import 'package:getx_example/middlewares/acesso_negado.dart';
import 'package:getx_example/middlewares/middleware_page.dart';
import 'package:getx_example/home_page.dart';
import 'package:getx_example/middlewares/route_middleware.dart';
import 'package:getx_example/nested_navigation/home_nested_navigation.dart';
import 'package:getx_example/rotas_nomeadas/rota_nao_encontrada/rota_nao_encontrada.dart';

import 'rotas_nomeadas/pages/inicial/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Get Demo',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        initialRoute: '/',
        //routingCallback serve para capturar as rotas que o usuário passou
        //ajuda se quiser gerar métricas para google analitycs por exemplo...
        routingCallback: (Routing? routing) {
          debugPrint("ROTAS CAMINHOS: ${routing?.previous}");
          debugPrint("ROTAS CAMINHOS: ${routing?.current}");
        },
        unknownRoute:
            GetPage(name: '/404', page: () => const RotaNaoEncontrada()),
        getPages: [
          GetPage(name: '/', page: () => const HomePage()),
          GetPage(name: '/inicial/page1', page: () => const Page1()),
          GetPage(
              name: '/envio-parametros',
              page: () => const EnvioParametrosHomePage(),
              children: [
                GetPage(name: '/argumets', page: () => const ArgumentosParam()),
                GetPage(
                    name: '/path-param/:nome/obrigatorio',
                    page: () => const PathParam()),
                GetPage(name: '/query-param', page: () => const QueryParam()),
              ]),
          GetPage(
            name: '/middleware-page',
            page: () => MiddlewarePage(),
            //middlewares: [RouteMiddleware(priority: 1)],
            middlewares: [RouteMiddleware()],
          ),
          GetPage(
            name: '/acessDenied',
            page: () => const AcessoNegado(),
          ),
          GetPage(
            name: '/nested-navigation',
            page: () => HomeNestedNavigation(),
          ),
        ]);
  }
}

//Usado para comparativo de rotas nativas e rotas com Get
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const NavegacaoComumHomePage(),
//     );
//   }
// }
