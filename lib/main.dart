import 'dart:io';

import 'package:componentes/router/app_rutas.dart';
import 'package:componentes/theme/app_tema.dart';
import 'package:flutter/material.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListavistaScreen(),
      initialRoute: AppRutas.initialRoute,
      routes: AppRutas.getAppRoutes(),
      onGenerateRoute: AppRutas.onGenerateRoute,
      theme: AppTema.temaligth,
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
