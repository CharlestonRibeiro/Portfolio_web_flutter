import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/styles.dart';
import 'package:portfolio_web/components/menuCustom.dart';
import 'package:portfolio_web/appRoutes.dart';

class SliverAppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return SliverAppBar(
      backgroundColor: Styles.corAppBar,
      floating: true,
      elevation: 25,
      shadowColor: Styles.corAppBar,
      centerTitle: false,
         title: Text(
        "Charleston Ribeiro dos Passos",
        style: TextStyle(
            color: Styles.corNome,
            fontWeight: FontWeight.w400,
            letterSpacing: -1.2,
            fontSize: 28),
         ),
      actions: [
        Container(
            child: largura < 600
                ? IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Rotas.MENU_CUSTOM_MINIMO);
                      },icon: Icon(Icons.menu))
                : MenuCustom()),
      ]);
  }
}