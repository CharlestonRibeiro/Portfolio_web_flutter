import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class CardsCustom extends StatelessWidget {

  final color;
  final title;
  final description;

  const CardsCustom({Key?key, this.color, this.title, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
          child: Container(
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height ,
            color: color,
            child: Column(
              children: [
                AutoSizeText(title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17
                ),
                  textAlign: TextAlign.justify,),

                AutoSizeText(description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 17
                  ),
                  textAlign: TextAlign.justify,)

              ],
            ),
          ),
        );
  }
}