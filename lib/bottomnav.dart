import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_example/navpages/anota%C3%A7%C3%B5es/notas.dart';
import 'package:url_launcher_example/navpages/assistente/assisente.dart';
import 'package:url_launcher_example/navpages/noticias/noticias.dart';
import 'package:url_launcher_example/navpages/atalhos/atalhos.dart';
import 'package:url_launcher_example/navpages/saude/saude.dart';

class Mainpage extends StatefulWidget {
  @override
  UrlLinks createState() => UrlLinks();
}

class UrlLinks extends State<Mainpage> {
  int paginas = 0;
  // ignore: non_constant_identifier_names
  final Screens = [
    saude(),
    MyHomePage(),
    assistente(),
    atalhos(),
    noticias(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Screens[paginas],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 30,
          selectedFontSize: 18,
          unselectedFontSize: 10,
          currentIndex: paginas,
          onTap: (index) => setState(() => paginas = index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.healing),
                label: 'saude',
                backgroundColor: Colors.red[400]),
            BottomNavigationBarItem(
                icon: Icon(Icons.notes),
                label: 'notas',
                backgroundColor: Colors.purple[400]),
            BottomNavigationBarItem(
                icon: Icon(Icons.mic),
                label: 'assistente',
                backgroundColor: Colors.blue[400]),
            BottomNavigationBarItem(
                icon: Icon(Icons.swap_horiz_outlined),
                label: 'atalhos',
                backgroundColor: Colors.amber[400]),
            BottomNavigationBarItem(
                icon: Icon(Icons.new_releases),
                label: 'noticias',
                backgroundColor: Colors.green[400]),
          ],
        ),
      );
}
