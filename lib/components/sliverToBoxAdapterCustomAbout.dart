
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/components/programming_skills.dart';
import 'package:portfolio_web/components/solfSkills.dart';
import 'package:styled_text/styled_text.dart';

class SliverToBoxAdaptarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/imagens/p.jpg"),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          StyledText(
            text: '<bold><h1>Charleston Ribeiro dos Passos</h1></bold>',
            tags: {
              'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
              'h1': StyledTextTag(style: TextStyle(fontSize: 30))
            },
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(60, 40, 60, 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: const AutoSizeText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's "
                    "standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to "
                    "make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, "
                    "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing "
                    "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions"
                    " of Lorem Ipsum.",
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Text('Habilidades em Programação',
            style: TextStyle(
                fontSize: 25
            ),),

          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30)),
          ProgrammingSkills(),
          Padding(padding: EdgeInsets.only(top: 40)),

          Text('Habilidades Comportamentais',
            style: TextStyle(
                fontSize: 25
            ),),

          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 30)),
          SoftSkills(),
          Padding(padding: EdgeInsets.only(top: 60)),

        ],
      ),
    );
  }
}
