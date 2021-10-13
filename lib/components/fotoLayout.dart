// ignore: file_names
import 'package:flutter/material.dart';

class FotosLayout extends StatelessWidget {
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
            )
          ],
        ),
      ],
    );
  }
}
