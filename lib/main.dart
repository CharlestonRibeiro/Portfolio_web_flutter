import 'package:flutter/material.dart';
import 'package:portfolio_web/screens/homePageScreens.dart';

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
       // routes: {
       //   AppRoutes.PAGINA_INICIAL: (context) => HomePageScreen(),
       //   AppRoutes.SOBRE_MIM: (context) => AboutScreen(),
       //   AppRoutes.TRABALHOS: (context) => WorksScreen(),
       // }
    );
  }
}