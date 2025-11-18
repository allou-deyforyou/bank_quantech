// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_information_logic_category_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider pour la liste des cartes de crédit avec synchronisation

@ProviderFor(CardInformationCategoryController)
const cardInformationCategoryControllerProvider =
    CardInformationCategoryControllerProvider._();

/// Provider pour la liste des cartes de crédit avec synchronisation
final class CardInformationCategoryControllerProvider
    extends
        $StreamNotifierProvider<
          CardInformationCategoryController,
          List<TransactionCategoryEntity>
        > {
  /// Provider pour la liste des cartes de crédit avec synchronisation
  const CardInformationCategoryControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cardInformationCategoryControllerProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[
          getAllCategoriesWithSyncUseCaseProvider,
          syncAllCategoriesUseCaseProvider,
        ],
        $allTransitiveDependencies: const <ProviderOrFamily>{
          CardInformationCategoryControllerProvider.$allTransitiveDependencies0,
          CardInformationCategoryControllerProvider.$allTransitiveDependencies1,
          CardInformationCategoryControllerProvider.$allTransitiveDependencies2,
          CardInformationCategoryControllerProvider.$allTransitiveDependencies3,
          CardInformationCategoryControllerProvider.$allTransitiveDependencies4,
          CardInformationCategoryControllerProvider.$allTransitiveDependencies5,
          CardInformationCategoryControllerProvider.$allTransitiveDependencies6,
        },
      );

  static const $allTransitiveDependencies0 =
      getAllCategoriesWithSyncUseCaseProvider;
  static const $allTransitiveDependencies1 =
      GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies0;
  static const $allTransitiveDependencies2 =
      GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies1;
  static const $allTransitiveDependencies3 =
      GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies2;
  static const $allTransitiveDependencies4 =
      GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies3;
  static const $allTransitiveDependencies5 =
      GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies4;
  static const $allTransitiveDependencies6 =
      GetAllCategoriesWithSyncUseCaseProvider.$allTransitiveDependencies5;

  @override
  String debugGetCreateSourceHash() =>
      _$cardInformationCategoryControllerHash();

  @$internal
  @override
  CardInformationCategoryController create() =>
      CardInformationCategoryController();
}

String _$cardInformationCategoryControllerHash() =>
    r'8a21ec53f2b57add423f7cfa04eb3c709a57b0fe';

/// Provider pour la liste des cartes de crédit avec synchronisation

abstract class _$CardInformationCategoryController
    extends $StreamNotifier<List<TransactionCategoryEntity>> {
  Stream<List<TransactionCategoryEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<TransactionCategoryEntity>>,
              List<TransactionCategoryEntity>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<TransactionCategoryEntity>>,
                List<TransactionCategoryEntity>
              >,
              AsyncValue<List<TransactionCategoryEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
