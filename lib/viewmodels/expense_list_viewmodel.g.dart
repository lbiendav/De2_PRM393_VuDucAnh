// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_list_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ExpenseListViewModel)
final expenseListViewModelProvider = ExpenseListViewModelProvider._();

final class ExpenseListViewModelProvider
    extends $AsyncNotifierProvider<ExpenseListViewModel, List<ExpenseModel>> {
  ExpenseListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'expenseListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$expenseListViewModelHash();

  @$internal
  @override
  ExpenseListViewModel create() => ExpenseListViewModel();
}

String _$expenseListViewModelHash() =>
    r'389ab5a39fc8c31c3b39d85b5017deae55f2c477';

abstract class _$ExpenseListViewModel
    extends $AsyncNotifier<List<ExpenseModel>> {
  FutureOr<List<ExpenseModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<ExpenseModel>>, List<ExpenseModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ExpenseModel>>, List<ExpenseModel>>,
              AsyncValue<List<ExpenseModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
