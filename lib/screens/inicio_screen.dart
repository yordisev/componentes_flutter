import 'package:componentes/router/app_rutas.dart';
import 'package:componentes/theme/app_tema.dart';
import 'package:flutter/material.dart';
// import 'package:componentes/screens/screens.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOpciones = AppRutas.menuOpciones;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes de Flutter"),
          // elevation: 5,
          // backgroundColor: Colors.green,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    menuOpciones[i].icono,
                    color: AppTema.primary,
                  ),
                  title: Text(menuOpciones[i].nombre),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const ListavistaScreen(),
                    // );
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, menuOpciones[i].ruta);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOpciones.length));
  }
}
