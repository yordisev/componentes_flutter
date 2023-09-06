import 'package:componentes/router/menu_opciones.dart';
import 'package:componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRutas {
  static const initialRoute = 'inicio';

  static final menuOpciones = <MenuOpciones>[
    MenuOpciones(
        ruta: 'inicio',
        nombre: 'Inicio App',
        pantalla: const InicioScreen(),
        icono: Icons.home),
    MenuOpciones(
        ruta: 'lista',
        nombre: 'Lista 1',
        pantalla: const ListavistaScreen(),
        icono: Icons.list_alt_outlined),
    MenuOpciones(
        ruta: 'lista2',
        nombre: 'Lista 2',
        pantalla: const ListavistaScreenOriginal(),
        icono: Icons.list_sharp),
    MenuOpciones(
        ruta: 'alertas',
        nombre: 'Alertas',
        pantalla: const AlertasScreen(),
        icono: Icons.bus_alert_rounded),
    MenuOpciones(
        ruta: 'tarjetas',
        nombre: 'Tarjetas - Cards',
        pantalla: const TarjetasScreen(),
        icono: Icons.tab_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final opciones in menuOpciones) {
      appRoutes
          .addAll({opciones.ruta: (BuildContext context) => opciones.pantalla});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'inicio': (BuildContext context) => const InicioScreen(),
  //   'Lista': (BuildContext context) => const ListavistaScreen(),
  //   'Lista2': (BuildContext context) => const ListavistaScreenOriginal(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      // esto es para las rutas que no existe los redireccioan hay
      builder: (context) => const AlertasScreen(),
    );
  }
}
