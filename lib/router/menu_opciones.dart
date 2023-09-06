import 'package:flutter/material.dart';

import 'package:flutter/material.dart' show IconData, Widget;

class MenuOpciones {
  final String ruta;
  final IconData icono;
  final String nombre;
  final Widget pantalla;

  MenuOpciones(
      {required this.ruta,
      required this.icono,
      required this.nombre,
      required this.pantalla});
}
