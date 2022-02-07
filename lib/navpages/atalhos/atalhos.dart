import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_example/navpages/saude/saude.dart';

class atalhos extends StatelessWidget {
  Future<void> _launchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print(
          'Não pode executar o link $url talvez não tenha a aplicação a aplicação instalada');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Center(
          child: Text('Atalhos'),
        )),
        backgroundColor: Colors.amber[400],
      ),
      backgroundColor: Colors.amber[400],
      body: Column(children: [
        Row(
          //apenas para o espaçamento;
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.amber[400],
            )
          ],
        ),
        Row(
          //alinhamento no centro
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          //children para conter os circulos
          children: [
            //circulo que contém as ligações das apps
            CircleAvatar(
              //tamanho e cor do circulo
              radius: 56,
              backgroundColor: Colors.white,
              //icon da igação tlf
              child: TextButton.icon(
                icon: Icon(FontAwesome.phone, color: Colors.blue),
                //texto da ligação tlf
                label: Text(
                  'Tel',
                ),
                //botão para ir para a aplicação do tlf
                //assim que a pessoa clicar no tlf a predefinição é que apareça o numero do 112
                onPressed: () => _launchLink('tel:112'),
              ),
            ),
            CircleAvatar(
              //tamanho e cor do circulo
              radius: 56,
              backgroundColor: Colors.white,
              //icon da ligação email
              child: TextButton.icon(
                icon: Icon(Icons.mail),
                //texto da ligação email
                label: Text(
                  'Email',
                ),
                //botão para ir para a aplicação email
                onPressed: () => _launchLink('mailto:'),
              ),
            ),
          ],
        ),
        Row(
          //apenas para o espaçamento;
          children: [
            CircleAvatar(
              backgroundColor: Colors.amber[400],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 56,
              backgroundColor: Colors.white,
              child: TextButton.icon(
                icon: Icon(FontAwesome.paper_plane, color: Colors.blue),
                label: Text('Sms'),
                onPressed: () => _launchLink('sms:'),
              ),
            ),
            CircleAvatar(
              radius: 56,
              backgroundColor: Colors.white,
              child: TextButton.icon(
                icon: Icon(FontAwesome.image, color: Colors.blue),
                label: Text('fotos'),
                onPressed: () => _launchLink(
                    'https://www.google.com/intl/pt-PT/photos/about/'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.amber[400],
              radius: 25,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 56,
              backgroundColor: Colors.white,
              child: TextButton.icon(
                icon: Icon(FontAwesome.whatsapp, color: Colors.blue),
                label: Text(
                  'wpp',
                ),
                onPressed: () =>
                    _launchLink('https://api.whatsapp.com/send?phone=122'),
              ),
            ),
            CircleAvatar(
              radius: 56,
              backgroundColor: Colors.white,
              child: TextButton.icon(
                icon: Icon(Icons.map),
                label: Text(
                  'mapa',
                ),
                onPressed: () => _launchLink('https://www.google.pt/maps'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.amber[400],
            )
          ],
        ),
        Column(
          //children que guarda o circulo
          children: [
            //cirsculo que contem a app
            CircleAvatar(
              //tamanho e cor do circulo
              radius: 56,
              backgroundColor: Colors.white,
              //icon que fica dentro do circulo
              child: TextButton.icon(
                icon: Icon(FontAwesome.facebook, color: Colors.blue),
                //texto que aparece no circulo
                label: Text('Facebook'),
                //ligação para o circulo
                onPressed: () => _launchLink('https://www.facebook.com'),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
