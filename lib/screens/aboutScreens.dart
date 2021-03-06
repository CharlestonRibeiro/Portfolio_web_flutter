import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/components/bigHeader.dart';
//import 'package:portfolio_web/components/programming_skills.dart';
import 'package:portfolio_web/components/sliverAppBarCustom.dart';
import 'package:portfolio_web/components/solfSkills.dart';
import 'package:styled_text/styled_text.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarCustom(),
          const SliverToBoxAdapter(
            child: BigHeader(pagina: 'Sobre mim'),
          ),
         SliverToBoxAdapter(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Padding(padding: EdgeInsets.only(top: 40)),
               CircleAvatar(
                 radius: 70,
                 backgroundImage: AssetImage("assets/imagens/perfil.jpeg"),
               ),
               Padding(padding: EdgeInsets.only(top: 40)),
               StyledText(
                 text: '<bold><h1>Charleston Ribeiro dos Passos</h1></bold>',
                 tags: {
                   'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                   'h1': StyledTextTag(style: TextStyle(fontSize: 30))
                 },
               ),

               Padding(
                 padding: const EdgeInsets.fromLTRB(60, 40, 60, 40),
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height * 0.25,
                   child: const AutoSizeText(
                     "    Sou acadêmico de Análise e Desenvolvimento de Sistemas - ADS pelo Instituto Federal de Rôndonia - IFRO. "
                     " O curso possui uma grade curricular focada em programação, aonde as principais tecnologias utilizadas são: "
                     " Python, Django, Flutter e PostgreSQL. Utilizo de forma complementar a plataforma Udemy, onde já obtive alguns "
                     " certificados de tecnologias como por exemplo: Mysql, Git e Github, Linux, Arduino. ",
                     style: TextStyle(
                       fontSize: 17,
                     ),
                     textAlign: TextAlign.justify,
                   ),
                 ),
               ),

               Text('Teste de Perfil',
                 style: TextStyle(
                     fontSize: 25
                 ),),


               Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 30)),
               SoftSkills(),
               Padding(padding: EdgeInsets.only(top: 40)),
               Text('Perfil Agregador',
                 style: TextStyle(
                     fontSize: 20
                 ),),

               Padding(
                 padding: const EdgeInsets.fromLTRB(60, 5, 60, 5),
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height * 0.25,
                   child: const AutoSizeText(
                         "    O perfil Agregador indica alguém que busca foco nas pessoas e no seu desenvolvimento de forma leve "
                         " e adaptável. O bem-estar do grupo deixando as pessoas terem amplas possibilidades de expressarem são "
                         " relevantes. Existe uma tendência para ambientes colaborativos onde as pessoas possam interagir e se "
                         " expressar. Prefere também ambientes mais livres e com menos restrições, onde as pessoas possam se "
                         " desenvolver e juntas crescer. Tende a preferir sistemas que valorizem as pessoas e que as reconheçam. "
                         " O foco deve ser em desenvolvimento e o sistema não deve ser muito rígido. Sistemas de divisão de lucros "
                         " a partir do atingimento de metas da equipe também fazem o seu estilo. ",
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
        ],
      ),
    );
  }
}
