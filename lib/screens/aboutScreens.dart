import 'package:flutter/material.dart';
import 'package:portfolio_web/components/sliverAppBarCustom.dart';
import 'package:portfolio_web/utils/styles.dart';

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
        ],
      ),
    );
  }
}
