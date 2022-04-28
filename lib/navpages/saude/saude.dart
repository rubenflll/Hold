// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

//class criada para ser ligada ao bottomNavigationBar
class saude extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //criar appBar
        appBar: AppBar(
          //titulo da appbar
          title: (Center(
            child: Text('assistente'),
          )),
          //cor da appbar
          backgroundColor: Colors.red[400],
        ),
        //cor de fundo do separador
        backgroundColor: Colors.red[400],
      );
}
