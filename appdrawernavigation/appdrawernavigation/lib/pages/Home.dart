import 'package:appdrawernavigation/pages/Experiencia.dart';
import 'package:appdrawernavigation/pages/Formacao.dart';
import 'package:appdrawernavigation/pages/Pessoal.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _body(),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            _infoPessoal(
                "https://conteudo.imguol.com.br/c/tab/be/2020/01/17/foto-whatsapp-sumida-1579293251261_v2_615x300.jpg",
                "Eros Mariano"),
            ListTile(
              title: Text('Pessoal'),
              subtitle: Text('Tela Pessoal'),
              trailing: Icon(Icons.people),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
            ListTile(
              title: Text('Formação'),
              subtitle: Text('Tela Formação'),
              trailing: Icon(Icons.book),
              onTap: () {
                setState(() {
                  _currentPage = 3;
                });
              },
            ),
            ListTile(
              title: Text('Experiência'),
              subtitle: Text('Tela Experiência'),
              trailing: Icon(Icons.contact_mail_rounded),
              onTap: () {
                setState(() {
                  _currentPage = 4;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _infoPessoal(url, nome) {
    return Column(children: <Widget>[
      _foto(url),
      Text(nome),
    ]);
  }

  _foto(url) {
    return Center(
      child: Image.network(
        url,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("App Drawer Navigation"),
      centerTitle: true,
      backgroundColor: Colors.purple[200],
    );
  }

  _body() {
    if (_currentPage == 1) {
      return Center(child: Text('Tela Home'));
    } else if (_currentPage == 2) {
      return Pessoal();
    } else if (_currentPage == 3) {
      return Formacao();
    } else {
      return Experiencia();
    }
  }
}