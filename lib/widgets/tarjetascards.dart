import 'package:componentes/theme/app_tema.dart';
import 'package:flutter/material.dart';

class TarjetasCards extends StatelessWidget {
  const TarjetasCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.credit_card, color: AppTema.primary),
            title: Text('Tarjetas - Card'),
            subtitle: Text('loream  tyexasdas asdasdasdasd'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(onPressed: () {}, child: const Text('OK')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
