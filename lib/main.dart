import 'package:flutter/material.dart';
import 'package:portfolio_web/appRoutes.dart';
import 'package:portfolio_web/screens/homePageScreens.dart';
import 'package:portfolio_web/screens/aboutScreens.dart';
import 'package:portfolio_web/screens/worksScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(
        ),
        home: HomePageScreen(),
        routes: {
          Rotas.PAGINA_INICIAL: (context) => HomePageScreen(),
          Rotas.SOBRE_MIM: (context) => AboutScreen(),
          Rotas.TRABALHOS: (context) => WorksScreen(),
         // Rotas.TRABALHOS: (context) => WorksScreen(),
        }
    );
  }
}