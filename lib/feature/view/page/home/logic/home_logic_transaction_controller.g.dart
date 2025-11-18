// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_logic_transaction_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider pour la liste des cartes de crédit avec synchronisation

@ProviderFor(HomeTransactionController)
const homeTransactionControllerProvider = HomeTransactionControllerProvider._();

/// Provider pour la liste des cartes de crédit avec synchronisation
final class HomeTransactionControllerProvider
    extends
        $StreamNotifierProvider<
          HomeTransactionController,
          List<TransactionEntity>
        > {
  /// Provider pour la liste des cartes de crédit avec synchronisation
  const HomeTransactionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeTransactionControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          getAllTransactionsUseCaseProvider,
          syncAllTransactionsUseCaseProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          HomeTransactionControllerProvider.$allTransitiveDependencies0,
          HomeTransactionControllerProvider.$allTransitiveDependencies1,
          HomeTransactionControllerProvider.$allTransitiveDependencies2,
          HomeTransactionControllerProvider.$allTransitiveDependencies3,
          HomeTransactionControllerProvider.$allTransitiveDependencies4,
          HomeTransactionControllerProvider.$allTransitiveDependencies5,
        },
      );

  static const $allTransitiveDependencies0 = getAllTransactionsUseCaseProvider;
  static const $allTransitiveDependencies1 =
      GetAllTransactionsUseCaseProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      GetAllTransactionsUseCaseProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      GetAllTransactionsUseCaseProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      GetAllTransactionsUseCaseProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 = syncAllTransactionsUseCaseProvider;

  @override
  String debugGetCreateSourceHash() => _$homeTransactionControllerHash();

  @$internal
  @override
  HomeTransactionController create() => HomeTransactionController();
}

String _$homeTransactionControllerHash() =>
    r'78ae00a944c92fcd218cf87f9db99fb1706cf812';

/// Provider pour la liste des cartes de crédit avec synchronisation

abstract class _$HomeTransactionController
    extends $StreamNotifier<List<TransactionEntity>> {
  Stream<List<TransactionEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<TransactionEntity>>,
              List<TransactionEntity>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<TransactionEntity>>,
                List<TransactionEntity>
              >,
              AsyncValue<List<TransactionEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
