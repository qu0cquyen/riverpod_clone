/// A object which maintains a provider value
class KeepAliveLink {
  KeepAliveLink._(this._close);

  final void Function() _close;

  /// Release this [KeepAliveLink], allowing the associated provider
  /// to be disposed if the provider is no-longer listener nor has any
  /// remaining [KeepAliveLink]
  void close() => _close();
}
