import 'package:flutter/material.dart';

abstract class Controller {
  late final BuildContext context;

  /// Optional methods
  void init() {}
  void builded(Duration timestamp) {}
  void dispose() {}
}