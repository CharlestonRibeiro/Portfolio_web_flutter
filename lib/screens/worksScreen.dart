import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/components/cards.dart';
import 'package:portfolio_web/components/sliverAppBarCustom.dart';
import 'package:portfolio_web/utils/carrouselSlider.dart';
import 'package:portfolio_web/utils/styles.dart';
import 'package:styled_text/styled_text.dart';

class WorksScreen extends StatefulWidget {
  const WorksScreen({Key? key}) : super(key: key);

  @override
  _WorksScreenState createState() => _WorksScreenState();
}

class _WorksScreenState extends State<WorksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          // ignore: prefer_const_constructors
          SliverAppBarCustom(),

          SliverToBoxAdapter(
            child: CarrouselSliderScreen(),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(top: 80)),
                StyledText(
                  text: "<bold><h1> Meus Trabalhos </h1></bold>",
                  tags: {
                    'bold': StyledTextTag(
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    'h1': StyledTextTag(style: TextStyle(fontSize: 30))
                  },
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: const AutoSizeText(
                      "     Durante a faculdade, desenvolvi varias atividades de programação,"
                      " aqui estão alguns exemplos. ",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),

          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              CardsCustom(imagem:"assets/imagens/app.bolo.jpeg", color: Styles.corCard1,),
              CardsCustom(imagem:"assets/imagens/app.jap.jpeg", color: Styles.corCard2,),
              CardsCustom(imagem:"assets/imagens/app.kam.jpeg", color: Styles.corCard3,),
            ],
          ),

        ]
        )
    );
  }
}