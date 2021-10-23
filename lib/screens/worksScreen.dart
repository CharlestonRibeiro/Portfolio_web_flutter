import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/components/cards.dart';
import 'package:portfolio_web/components/sliverAppBarCustom.dart';
import 'package:portfolio_web/utils/carrouselSlider.dart';
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
                Padding(padding: EdgeInsets.only(top: 20)),
                StyledText(
                  text: "<bold><h1> Meus Trabalhos </h1></bold>",
                  tags: {
                    'bold': StyledTextTag(
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    'h1': StyledTextTag(style: TextStyle(fontSize: 30))
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 40, 60, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: const AutoSizeText(
                      "     Os meus últimos anos como desenvolvedor de Sistemas, me renderam algumas contribuições com negócios e empresas locais, os quais orgulhosamente estão expostos abaixo:",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              CardsCustom(color: Colors.black87, title: 'teste card 1',description: 'testestestestestestestestestestestesstestes',),
              CardsCustom(color: Colors.blue, title: 'teste card 2',description: 'testestestestestestestestestestestesstestes',),
              CardsCustom(color: Colors.purple, title: 'teste card 3',description: 'testestestestestestestestestestestesstestes',),
            ],
          ),

        ]
        )
    );
  }
}