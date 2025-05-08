// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_name.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHash() => r'd6296f79c40a19616d69640362a4b3b083983b22';

/// See also [repository].
@ProviderFor(repository)
final repositoryProvider = AutoDisposeProvider<TaskApiClient>.internal(
  repository,
  name: r'repositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RepositoryRef = AutoDisposeProviderRef<TaskApiClient>;
String _$taskHash() => r'2e5f0a6cb01aafd4128c1527197fd470a767fbfb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [task].
@ProviderFor(task)
const taskProvider = TaskFamily();

/// See also [task].
class TaskFamily extends Family<AsyncValue<TaskList>> {
  /// See also [task].
  const TaskFamily();

  /// See also [task].
  TaskProvider call(
    String id,
  ) {
    return TaskProvider(
      id,
    );
  }

  @override
  TaskProvider getProviderOverride(
    covariant TaskProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'taskProvider';
}

/// See also [task].
class TaskProvider extends AutoDisposeFutureProvider<TaskList> {
  /// See also [task].
  TaskProvider(
    String id,
  ) : this._internal(
          (ref) => task(
            ref as TaskRef,
            id,
          ),
          from: taskProvider,
          name: r'taskProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$taskHash,
          dependencies: TaskFamily._dependencies,
          allTransitiveDependencies: TaskFamily._allTransitiveDependencies,
          id: id,
        );

  TaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<TaskList> Function(TaskRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TaskProvider._internal(
        (ref) => create(ref as TaskRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TaskList> createElement() {
    return _TaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TaskRef on AutoDisposeFutureProviderRef<TaskList> {
  /// The parameter `id` of this provider.
  String get id;
}

class _TaskProviderElement extends AutoDisposeFutureProviderElement<TaskList>
    with TaskRef {
  _TaskProviderElement(super.provider);

  @override
  String get id => (origin as TaskProvider).id;
}

String _$listNotifierHash() => r'd6f4a76d4014560e5e671a6775e4ba2468feae5e';

/// See also [ListNotifier].
@ProviderFor(ListNotifier)
final listNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ListNotifier, List<TaskList>>.internal(
  ListNotifier.new,
  name: r'listNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$listNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ListNotifier = AutoDisposeAsyncNotifier<List<TaskList>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
