import 'package:flutter/material.dart';

class InputTexto extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icono;
  final TextInputType? tipoinput;
  final bool verpassword;

  final String formProperty;
  final Map<String, dynamic> formvalores;
  const InputTexto({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icono,
    this.tipoinput,
    this.verpassword = false,
    required this.formProperty,
    required this.formvalores,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      // initialValue: 'Yordis Escorcia',
      keyboardType: tipoinput,
      obscureText: verpassword,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formvalores[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'Este Campo es requerido';
        return value.length < 3 ? 'Minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        icon: icono == null ? null : Icon(icono),
        // suffixIcon: sufijoicono == null ? null : Icon(sufijoicono),
        // prefixIcon: Icon(Icons.security),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(10),
        //         topRight: Radius.circular(10)))
      ),
    );
  }
}
