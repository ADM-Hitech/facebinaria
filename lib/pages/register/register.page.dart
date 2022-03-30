import 'package:facebinaria/pages/register/register.content.dart';
import 'package:flutter/material.dart';

class RegistePage extends StatefulWidget {
  const RegistePage({Key? key}) : super(key: key);

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<RegistePage> {

  void openFaceBinaria() {
    // implementar la libreria en esta funcion
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: registerContent(state: this),
    );
  }
}