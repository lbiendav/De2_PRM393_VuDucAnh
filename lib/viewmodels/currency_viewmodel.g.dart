// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrencyViewModel)
final currencyViewModelProvider = CurrencyViewModelProvider._();

final class CurrencyViewModelProvider
    extends $NotifierProvider<CurrencyViewModel, String> {
  CurrencyViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currencyViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currencyViewModelHash();

  @$internal
  @override
  CurrencyViewModel create() => CurrencyViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$currencyViewModelHash() => r'b0b6b63bb2894578a3d12a5783ef38d2f4090c08';

abstract class _$CurrencyViewModel extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
