// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:providerlocal/src/controller.dart';

typedef Page = Widget Function();

/// Provider Local
class ProviderLocal<T extends Controller> extends StatefulWidget {
  final T _controller;
  final Page _page;

  const ProviderLocal({
    Key? key,
    required T controller,
    required Page page,
  })  : _controller = controller,
        _page = page,
        super(key: key);

  static T of<T extends Controller>(BuildContext context) {
    final providerLocal =
        context.findAncestorWidgetOfExactType<ProviderLocal<T>>()!;
    return providerLocal._controller;
  }

  @override
  _ProviderLocal createState() => _ProviderLocal();
}

class _ProviderLocal extends State<ProviderLocal> with WidgetsBindingObserver {
  void _log(String methodName, {String? message}) {
    final ref = "$hashCode-${controller.hashCode}-${page.hashCode}";
    // ignore: avoid_print
    print("($ref) [ Provider | $methodName ] ${message ?? ""}");
  }

  Controller get controller => widget._controller;
  Page get page => widget._page;

  @override
  void initState() {
    _log("initState");
    super.initState();
    // Initlize controller
    controller.context = context;
    controller.init();

    WidgetsBinding.instance!.addObserver(this);
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _log("builded", message: "timestamp: $timeStamp");
      controller.builded(timeStamp);
    });
  }

  @override
  Widget build(BuildContext context) {
    _log("build");
    return page();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _log("didChangeAppLifecycleState", message: state.toString());
    switch (state) {
      case AppLifecycleState.resumed:
        // _log("didChangeAppLifecycleState", message: "resume");
        break;
      case AppLifecycleState.inactive:
        // _log("didChangeAppLifecycleState", message: "inactive");
        break;
      case AppLifecycleState.paused:
        // _log("didChangeAppLifecycleState", message: "paused");
        break;
      case AppLifecycleState.detached:
        // _log("didChangeAppLifecycleState", message: "detached");
        break;
    }
  }

  @override
  void dispose() {
    _log("dispose");
    controller.dispose();

    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }
}
