import 'package:flutter/material.dart';

//class criada para ser ligada ao bottomNavigationBar
class assistente extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //criar appBar
        appBar: AppBar(
          //titulo da appbar
          title: (Center(
            child: Text('assistente'),
          )),
          //cor da appbar
          backgroundColor: Colors.blue[400],
        ),
        //cor de fundo do separador
        backgroundColor: Colors.blue[400],
      );
}
