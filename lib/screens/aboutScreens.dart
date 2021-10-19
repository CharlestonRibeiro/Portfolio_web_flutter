import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/components/bigHeader.dart';
import 'package:portfolio_web/components/programming_skills.dart';
import 'package:portfolio_web/components/sliverAppBarCustom.dart';
import 'package:portfolio_web/components/solfSkills.dart';
import 'package:portfolio_web/utils/styles.dart';
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
         SliverToBoxAdapter(),
        ],
      ),
    );
  }
}
