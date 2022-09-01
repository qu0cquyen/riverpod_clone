import 'dart:html';

import 'package:meta/meta.dart';

/// An object that stores the state of the providers and allows overriding the
/// behaviour of a specific provider. 
/// 
/// If you are using Flutter, you do not need to care about this object
/// (outside of testing), as it is implicitly created for you by `ProviderScope`
/// 
/// 

@sealed
class ProviderContainer implements Node{
  ProviderContainer({
    ProviderContainer? parent, 
    int? cacheTime, 
    int? disposeDelay, 
    List<Override> overrides = const [], 
    List<ProviderObserver>? observers, 
  }): ; 
}

/// [ProviderContainer], which uses this object
/// `overrideWithValue`, which creates a [ProviderOverride]
@internal
class ProviderOverride implements Override{
  /// Overide a provider
  ProviderOverride({required ProviderBase origin, required ProviderBase override,}) : _origin = origin, _override = override; 

  /// The provider that is overriden
  final ProviderBase _origin; 

  /// The new provider behaviour 
  final ProviderBase _override; 
}

/// An object used by [ProviderContainer]/`ProviderScope` to override the behaviour
/// of a provider/family for part of the application 
/// 
/// Do not extend or implement
abstract class Override{}