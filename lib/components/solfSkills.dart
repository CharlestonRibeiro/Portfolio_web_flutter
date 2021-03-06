import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/animated_progress_indicator.dart';
import 'package:portfolio_web/utils/styles.dart';

class SoftSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Styles.corSkill1,
            percentage: 0.27,
            label: "Organização",
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Styles.corSkill2,
            percentage: 0.14,
            label: "Individualidade",
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Styles.corSkill3,
            percentage: 0.27,
            label: "Flexibilidade",
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            colorC: Styles.corSkill4,
            percentage: 0.32,
            label: "Suporte",
          ),
        ),

      ],
    );
  }
}