import 'package:componentes/widgets/inputtext.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myforkey = GlobalKey<FormState>();
    final Map<String, dynamic> formValues = {
      'nombre': '',
      'numero': '',
      'correo': '',
      'password': '',
      'rol': ''
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myforkey,
                child: Column(
                  children: [
                    InputTexto(
                      hintText: 'Nombre',
                      labelText: 'Nombre del Usuario',
                      helperText: 'Solo texto',
                      icono: Icons.security,
                      formProperty: 'nombre',
                      formvalores: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InputTexto(
                      hintText: 'Numero',
                      labelText: 'Documento',
                      helperText: 'Solo texto',
                      icono: Icons.security,
                      tipoinput: TextInputType.number,
                      formProperty: 'numero',
                      formvalores: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InputTexto(
                      hintText: 'Email',
                      labelText: 'Correo Electronico',
                      helperText: 'Solo texto',
                      icono: Icons.security,
                      tipoinput: TextInputType.emailAddress,
                      formProperty: 'correo',
                      formvalores: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InputTexto(
                      hintText: 'Password',
                      labelText: 'Contraseña Usuario',
                      helperText: 'Solo texto',
                      icono: Icons.security,
                      verpassword: true,
                      formProperty: 'password',
                      formvalores: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                        DropdownMenuItem(
                            value: 'Asistente', child: Text('Asistente')),
                      ],
                      onChanged: (value) {
                        formValues['rol'] = value ?? 'Asistente';
                        print(value);
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (!myforkey.currentState!.validate()) {
                            return;
                          }
                          print(formValues);
                        },
                        child: const SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: Text('Guardar'),
                          ),
                        ))
                  ],
                ),
              )),
        ));
  }
}
