import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  final Duration interval;
  VoidCallback? _action;
  Timer? _timer;

  Debouncer(this.interval);

  void call(VoidCallback action) {
    /// Let the latest action override whatever was there before
    _action = action;

    /// Always cancel and restart the timer
    _timer?.cancel();
    _timer = Timer(interval, _callAction);
  }

  void _callAction() {
    /// If we have an action queued up, complete it
    _action?.call();
    _action = null;
  }

  void reset() {
    _action = null;
    _timer = null;
  }
}
