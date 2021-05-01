import 'package:flutter/material.dart';

class Resultado {
  Resultado(
      {required this.textoIMC,
      required this.resultadoIMC,
      required this.mensajeIMC,
      required this.color});
  String textoIMC;
  double resultadoIMC;
  String mensajeIMC;
  Color color;
}
