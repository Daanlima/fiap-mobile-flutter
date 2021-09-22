import 'package:flutter/material.dart';

void main() => runApp(TelaInicial());


class TelaInicial extends StatelessWidget{
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello Daniel App"),
        ),
        body: Container(
            color: Colors.yellow,
            child: Center(
                child: Text(
                    "Hello Daniel!!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                )
            )
        )
    );
  }

}

