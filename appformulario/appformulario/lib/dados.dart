import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
  TextEditingController valueNome;
  TextEditingController idadeController;

  String dropdownValor1;
  String dropdownValor2;
  double valorSlider;
  bool valorSwitch;

  Dados({
    required this.valueNome,
    required this.idadeController,
    required this.dropdownValor1,
    required this.dropdownValor2,
    required this.valorSlider,
    required this.valorSwitch,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados informados'),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Nome: " + valueNome.text),
          Text("Idade: " + idadeController.text),
          Text("Gênero: $dropdownValor1"),
          Text("Ensino: $dropdownValor2"),
          Text("Limite: $valorSlider"),
          Text("Brasileiro: $valorSwitch"),
          RaisedButton(
            child: Text('Voltar'),
            onPressed: () => _onClickVoltar(context),
          ),
        ],
      ),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context);
  }
}