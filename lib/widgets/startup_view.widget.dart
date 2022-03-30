import 'package:facebinaria/models/startup_view.model.dart';
import 'package:facebinaria/providers/startup_view.provicer.dart';
import 'package:flutter/material.dart';

class StartupView extends StatelessWidget {

  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return StartupViewProvider<StartupViewModel>.withConsumer(
      viewModel: StartupViewModel(),
      onModelReady: (model) => model.handleStartup(),
      builder: (context, model, child) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
            Center(
              child: CircularProgressIndicator(
                strokeWidth: 3,
              ),
            )
          ]
        ),
      )
    );
  }
}