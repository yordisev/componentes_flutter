import 'package:componentes/theme/app_tema.dart';
import 'package:flutter/material.dart';

class TarjetasImagenes extends StatelessWidget {
  final String imagenurl;
  final String? textoimagen;
  const TarjetasImagenes(
      {super.key, required this.imagenurl, this.textoimagen});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTema.primary.withOpacity(0.5),
      elevation: 5,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imagenurl),
            placeholder: const AssetImage('assets/loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
          if (textoimagen != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(textoimagen ?? 'Sin Titulo de Imagen'))
        ],
      ),
    );
  }
}
