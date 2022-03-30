// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum _ViewModelProviderType { WithoutConsumer, WithConsumer }

class StartupViewProvider<T extends ChangeNotifier> extends StatefulWidget {

  final Widget? staticChild;
  final Function(T)? onModelReady;
  final Widget Function(BuildContext, T, Widget?) builder;
  final T viewModel;
  final _ViewModelProviderType providerType;

  const StartupViewProvider.withoutConsumer({
    Key? key,
    required this.viewModel,
    required this.builder,
    this.onModelReady
  }) : providerType = _ViewModelProviderType.WithoutConsumer, staticChild = null, super(key: key);

  const StartupViewProvider.withConsumer({
    Key? key,
    required this.viewModel,
    required this.builder,
    this.onModelReady,
    this.staticChild
  }) : providerType = _ViewModelProviderType.WithConsumer, super(key: key);

  @override
  _StartupViewState<T> createState() => _StartupViewState<T>();
}

class _StartupViewState<T extends ChangeNotifier> extends State<StartupViewProvider<T>> {

  late T _model;

  @override
  void initState() {
    super.initState();

    _model = widget.viewModel;

    if (widget.onModelReady != null) {
      widget.onModelReady!(_model);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.providerType == _ViewModelProviderType.WithoutConsumer) {
      return ChangeNotifierProvider(
        create: (context) => _model,
        child: widget.builder(context, _model, null)
      );
    }

    return ChangeNotifierProvider(
      create: (context) => _model,
      child: Consumer(
        builder: widget.builder,
        child: widget.staticChild,
      ),
    );
  }
}