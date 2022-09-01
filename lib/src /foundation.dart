part of './framework.dart';

/// A base class for all providers, used to consume a provider.
///
/// IT is used by [ProviderContainer.listen] and `ref.watch` to listen to
/// both a provider and `provider.select`
///
/// Should override ==/hashCode when possible
///
@immutable
mixin ProviderListenable<State> {
  /// Starts listening to this transformer
  ProviderSubscription<State> addListener(
    Node node,
    void Function(State? previous, State next) listener, {
    required void Function(Object error, StackTrace stackTrace)? onError,
    required void Function()? onDependencyMayHaveChanged,
    required bool fireImmediately,
  });

  /// Obtains the result of this provider expression without adding listener.
  State read(Node node);

  /// Partially listen to a provider.
  ///
  /// Note: This method of listening to an object is currently only supported
  /// by `ref.watch(` from
}
