import 'package:facebinaria/pages/register/register.page.dart';
import 'package:flutter/material.dart';

Widget registerContent({
  required RegisterState state
}) {
  return Center(
    child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(25),
      children: [
        Center(
          child: Container(
            color: Colors.redAccent,
            width: 80,
            height: 80,
            child: const Center(child: Text('LOGO', style: TextStyle(color: Colors.white),)),
          ),
        ),
        const SizedBox(height: 50),
        const Center(
          child: Text('Formulario de registro ....'),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          child: const Text('Registrar Rostro'),
          onPressed: state.openFaceBinaria
        )
      ],
    ),
  );
}