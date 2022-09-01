/// A callback used by providers to create the value exposed.
///
/// If an exception is thrown within that callback, all attempts at reading
/// the provider associated with the given callback will throw
///
/// The parameter [ref] can be used to interact with other providers
/// and the life-cycles of this provider
///
/// See also:
/// [Ref], which exposes the methods to read other providers.
/// [Provider], a provider that uses [Create] to expose an immutable value.

@internal
typedef Create<T, R extends Ref> = T Function(R ref);
