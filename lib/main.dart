import 'package:facebinaria/providers/app.provider.dart';
import 'package:facebinaria/services/navigation.service.dart';
import 'package:facebinaria/services/router.service.dart';
import 'package:facebinaria/services/setup.service.dart';
import 'package:facebinaria/widgets/startup_view.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  setupService();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp(
        title: 'Face Binaria',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: const [Locale('es')],
        navigatorKey: appService<NavigationService>().navigationKey,
        onGenerateRoute: generateRoute,
        home: const StartupView()
      )
    );
  }
}