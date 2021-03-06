// ignore: file_names
// ignore: file_names
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FotosAnimacaoLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SafeArea(
              child: Image.network(
                'https://images.unsplash.com/flagged/photo-1551954810-43cd6aef5b1f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1632&q=80',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 150),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Agne',
                          color: Colors.white),
                      child: Center(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: Duration(seconds: 3),
                          animatedTexts: [
                            TypewriterAnimatedText(
                                'Meu nome é'),
                            TypewriterAnimatedText(
                                'Charleston\n   Ribeiro\n      dos\n   Passos'),
                            TypewriterAnimatedText(
                                'Acadêmico\nde ADS no IFRO.'),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}
