import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/styles.dart';

class SliverAppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
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
    );
  }
}