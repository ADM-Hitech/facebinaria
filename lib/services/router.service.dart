import 'package:facebinaria/pages/register/register.page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {

  late MaterialPageRoute page;

  switch (settings.name) {
    case 'registrar':
      page = MaterialPageRoute(builder: (context) => const RegistePage(), settings: settings);
    break;
    case 'solicitud':
      page = MaterialPageRoute(builder: (context) => Container(), settings: settings);
    break;
    default:
      page = MaterialPageRoute(builder: (context) => const Center(child: Text('PAGE NOT FOUNT'),), settings: settings);
    break;
  }

  return page;
}