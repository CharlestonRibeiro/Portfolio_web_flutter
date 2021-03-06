import 'package:flutter/material.dart';
import 'package:portfolio_web/components/fotoAnimacaoLayout.dart';
import 'package:portfolio_web/components/sliverAppBarCustom.dart';

class HomePageScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarCustom(),
          SliverToBoxAdapter(
            child: FotosAnimacaoLayout(),
          )
        ],
      ),
    );
  }
}




