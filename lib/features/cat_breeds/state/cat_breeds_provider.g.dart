// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breeds_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$catBreedsHash() => r'f72be505e4ed23f594e3bf6099dfa24c7d65b189';

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

/// See also [catBreeds].
@ProviderFor(catBreeds)
const catBreedsProvider = CatBreedsFamily();

/// See also [catBreeds].
class CatBreedsFamily extends Family<AsyncValue<List<CatBreed>>> {
  /// See also [catBreeds].
  const CatBreedsFamily();

  /// See also [catBreeds].
  CatBreedsProvider call({
    int? page,
  }) {
    return CatBreedsProvider(
      page: page,
    );
  }

  @override
  CatBreedsProvider getProviderOverride(
    covariant CatBreedsProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'catBreedsProvider';
}

/// See also [catBreeds].
class CatBreedsProvider extends AutoDisposeFutureProvider<List<CatBreed>> {
  /// See also [catBreeds].
  CatBreedsProvider({
    int? page,
  }) : this._internal(
          (ref) => catBreeds(
            ref as CatBreedsRef,
            page: page,
          ),
          from: catBreedsProvider,
          name: r'catBreedsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$catBreedsHash,
          dependencies: CatBreedsFamily._dependencies,
          allTransitiveDependencies: CatBreedsFamily._allTransitiveDependencies,
          page: page,
        );

  CatBreedsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int? page;

  @override
  Override overrideWith(
    FutureOr<List<CatBreed>> Function(CatBreedsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CatBreedsProvider._internal(
        (ref) => create(ref as CatBreedsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CatBreed>> createElement() {
    return _CatBreedsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CatBreedsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CatBreedsRef on AutoDisposeFutureProviderRef<List<CatBreed>> {
  /// The parameter `page` of this provider.
  int? get page;
}

class _CatBreedsProviderElement
    extends AutoDisposeFutureProviderElement<List<CatBreed>> with CatBreedsRef {
  _CatBreedsProviderElement(super.provider);

  @override
  int? get page => (origin as CatBreedsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
