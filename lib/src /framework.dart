import 'package:flutter/foundation.dart' hide describeIdentity;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'auto_dispose.dart';

part './ref.dart';
part './foundation.dart';

/// [ProviderContainer], a Dart-only class that allows manipulating providers
/// [UncontrolledProviderScope], which exposes a [ProviderContainer] to the widget
/// tree withough managing its life-cycles
///
///

@sealed
class ProviderScope extends StatefulWidget {
  const ProviderScope({
    Key? key,
    this.overrides = const [],
    this.observers,
    this.cacheTime,
    this.disposeDelay,
    this.parent,
    required this.child,
  }) : super(key: key);

  /// Read the current [ProviderContainer] for a [BuildContext]
  static ProviderContainer containerOf(
    BuildContext context, {
    bool listen = true,
  }) {
    UncontrolledProviderScope? scope;

    if (listen) {
      scope = context
          .dependOnInheritedWidgetOfExactType<UncontrolledProviderScope>();
    }
  }
}
