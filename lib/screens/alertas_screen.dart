import 'package:componentes/theme/app_tema.dart';
import 'package:flutter/material.dart';

class AlertasScreen extends StatelessWidget {
  const AlertasScreen({Key? key}) : super(key: key);
  void verdialogo(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
            elevation: 5,
            title: const Text('Gestionar Titulo'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('este es otro texto'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              )
            ]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //     backgroundColor: AppTema.primary,
            //     shape: const StadiumBorder(),
            //     elevation: 0),
            onPressed: () => verdialogo(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Ver Alerta',
                style: TextStyle(fontSize: 16),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
