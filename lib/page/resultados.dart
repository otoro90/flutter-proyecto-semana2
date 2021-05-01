import 'package:flutter/material.dart';
import 'package:imc/models/Resultado.dart';

import 'home-page.dart';

class ResultadosPage extends StatelessWidget {
  final Resultado resultado;

  ResultadosPage({required this.resultado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado de las operaciones"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          margin: EdgeInsets.all(15),
          child: Row(
            children: [
              Text("Resultado",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xFF1c1d32),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 160,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          resultado.textoIMC.toUpperCase(),
                          style: TextStyle(
                              color: resultado.color,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          resultado.resultadoIMC.toStringAsFixed(1).toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              resultado.mensajeIMC,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ]),
                ),
              ]),
            ),
          ]),
        )),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          title: 'Calculadora IMC',
                        )));
          },
          child: Container(
              height: 80,
              color: Colors.pink,
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Calcular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                    ])
              ])),
        ),
      ]),
    );
  }
}
