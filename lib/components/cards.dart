import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class CardsCustom extends StatelessWidget {

  final color;
  final imagem;

  const CardsCustom({Key?key, this.color, this.imagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
            child: Container(
              width: 100,
              height: 400 ,
              color: color,
              child: Column(
                children: [
                  Image.asset(imagem),
                ],
              ),
            ),
          ),
    );
  }
}