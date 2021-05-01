import 'package:flutter/material.dart';

class RangoCategoria {
  RangoCategoria(
      {required this.textoIMC,
      required this.valorMinimoRango,
      required this.valorMaximoRango,
      required this.mensajeIMC,
      required this.color});
  String textoIMC;
  double valorMinimoRango;
  double valorMaximoRango;
  String mensajeIMC;
  Color color;
}
