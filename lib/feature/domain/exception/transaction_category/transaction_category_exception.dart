/// Exception de base pour tous les erreurs liées aux catégories de transactions
abstract class TransactionCategoryException implements Exception {
  const TransactionCategoryException(this.message, [this.details]);

  final String message;
  final String? details;

  @override
  String toString() =>
      'TransactionCategoryException: $message${details != null ? ' ($details)' : ''}';
}

/// Exception lancée quand une catégorie de transaction n'est pas trouvée
class TransactionCategoryNotFoundException
    extends TransactionCategoryException {
  const TransactionCategoryNotFoundException(String categoryId)
    : super('Transaction category not found', 'Category ID: $categoryId');
}

/// Exception lancée quand aucune catégorie n'est trouvée
class CategoriesNotFoundException extends TransactionCategoryException {
  const CategoriesNotFoundException([String? filter])
    : super('No transaction categories found', filter);
}

/// Exception lancée quand un nom de catégorie existe déjà
class CategoryNameAlreadyExistsException extends TransactionCategoryException {
  const CategoryNameAlreadyExistsException(String categoryName)
    : super('Category name already exists', 'Name: $categoryName');
}

/// Exception lancée quand le nom de catégorie est invalide
class InvalidCategoryNameException extends TransactionCategoryException {
  const InvalidCategoryNameException(String categoryName, String reason)
    : super('Invalid category name', 'Name: $categoryName, Reason: $reason');
}

/// Exception lancée quand la description de catégorie est invalide
class InvalidCategoryDescriptionException extends TransactionCategoryException {
  const InvalidCategoryDescriptionException(String description, String reason)
    : super(
        'Invalid category description',
        'Description: $description, Reason: $reason',
      );
}

/// Exception lancée quand l'icône de catégorie est invalide
class InvalidCategoryIconException extends TransactionCategoryException {
  const InvalidCategoryIconException(String reason)
    : super('Invalid category icon', reason);
}

/// Exception lancée quand la couleur de catégorie est invalide
class InvalidCategoryColorException extends TransactionCategoryException {
  const InvalidCategoryColorException(String reason)
    : super('Invalid category color', reason);
}

/// Exception lancée quand le type de catégorie est invalide
class InvalidCategoryTypeException extends TransactionCategoryException {
  const InvalidCategoryTypeException(String categoryType)
    : super('Invalid category type', 'Type: $categoryType');
}

/// Exception lancée quand une catégorie par défaut ne peut pas être supprimée
class DefaultCategoryDeletionException extends TransactionCategoryException {
  const DefaultCategoryDeletionException(String categoryId)
    : super('Cannot delete default category', 'Category ID: $categoryId');
}

/// Exception lancée quand une catégorie ne peut pas être supprimée car elle est utilisée
class CategoryInUseException extends TransactionCategoryException {
  const CategoryInUseException(String categoryId, int transactionCount)
    : super(
        'Cannot delete category in use',
        'Category ID: $categoryId, Transactions: $transactionCount',
      );
}

/// Exception lancée quand une catégorie ne peut pas être supprimée
class CategoryDeletionException extends TransactionCategoryException {
  const CategoryDeletionException(String categoryId, String reason)
    : super(
        'Cannot delete category',
        'Category ID: $categoryId, Reason: $reason',
      );
}

/// Exception lancée quand une catégorie archivée ne peut pas être modifiée
class ArchivedCategoryException extends TransactionCategoryException {
  const ArchivedCategoryException(String categoryId)
    : super('Cannot modify archived category', 'Category ID: $categoryId');
}

/// Exception lancée lors d'erreurs de validation des données de catégorie
class CategoryValidationException extends TransactionCategoryException {
  const CategoryValidationException(String field, String reason)
    : super('Category validation failed', 'Field: $field, Reason: $reason');
}

/// Exception lancée lors d'erreurs de concurrence (modifications simultanées)
class CategoryConcurrencyException extends TransactionCategoryException {
  const CategoryConcurrencyException(String categoryId)
    : super(
        'Category was modified by another operation',
        'Category ID: $categoryId',
      );
}

/// Exception lancée quand la limite de catégories personnalisées est atteinte
class CategoryLimitExceededException extends TransactionCategoryException {
  const CategoryLimitExceededException(int currentCount, int maxAllowed)
    : super(
        'Category limit exceeded',
        'Current: $currentCount, Max allowed: $maxAllowed',
      );
}

/// Exception lancée lors d'erreurs de recherche de catégories
class CategorySearchException extends TransactionCategoryException {
  const CategorySearchException(String query, String reason)
    : super('Category search failed', 'Query: $query, Reason: $reason');
}

/// Exception lancée quand l'initialisation des catégories par défaut échoue
class DefaultCategoryInitializationException
    extends TransactionCategoryException {
  const DefaultCategoryInitializationException(String reason)
    : super('Default category initialization failed', reason);
}

/// Exception lancée lors d'erreurs de statistiques d'utilisation des catégories
class CategoryUsageStatsException extends TransactionCategoryException {
  const CategoryUsageStatsException(String reason)
    : super('Category usage statistics calculation failed', reason);
}

/// Exception lancée quand une fusion de catégories échoue
class CategoryMergeException extends TransactionCategoryException {
  const CategoryMergeException(
    String sourceCategoryId,
    String targetCategoryId,
    String reason,
  ) : super(
        'Category merge failed',
        'Source: $sourceCategoryId, Target: $targetCategoryId, Reason: $reason',
      );
}

/// Exception lancée quand on essaie de fusionner une catégorie avec elle-même
class SelfCategoryMergeException extends TransactionCategoryException {
  const SelfCategoryMergeException(String categoryId)
    : super('Cannot merge category with itself', 'Category ID: $categoryId');
}

/// Exception lancée quand on essaie de fusionner des catégories de types différents
class IncompatibleCategoryTypesException extends TransactionCategoryException {
  const IncompatibleCategoryTypesException(String sourceType, String targetType)
    : super(
        'Cannot merge categories of different types',
        'Source type: $sourceType, Target type: $targetType',
      );
}

/// Exception lancée quand une catégorie par défaut ne peut pas être modifiée
class DefaultCategoryModificationException
    extends TransactionCategoryException {
  const DefaultCategoryModificationException(String categoryId, String field)
    : super(
        'Cannot modify default category',
        'Category ID: $categoryId, Field: $field',
      );
}

/// Exception lancée quand le statut de catégorie ne permet pas l'opération
class InvalidCategoryStatusException extends TransactionCategoryException {
  const InvalidCategoryStatusException(
    String categoryId,
    String currentStatus,
    String operation,
  ) : super(
        'Invalid category status for operation',
        'Category ID: $categoryId, Status: $currentStatus, Operation: $operation',
      );
}

/// Exception lancée lors d'erreurs de comptage de transactions par catégorie
class CategoryTransactionCountException extends TransactionCategoryException {
  const CategoryTransactionCountException(String categoryId, String reason)
    : super(
        'Category transaction count calculation failed',
        'Category ID: $categoryId, Reason: $reason',
      );
}

/// Exception lancée quand une catégorie inactive ne peut pas être utilisée
class InactiveCategoryException extends TransactionCategoryException {
  const InactiveCategoryException(String categoryId)
    : super(
        'Category is inactive and cannot be used',
        'Category ID: $categoryId',
      );
}

/// Exception lancée lors d'erreurs de restauration de catégorie
class CategoryRestorationException extends TransactionCategoryException {
  const CategoryRestorationException(String categoryId, String reason)
    : super(
        'Category restoration failed',
        'Category ID: $categoryId, Reason: $reason',
      );
}

/// Exception lancée quand une catégorie système ne peut pas être archivée
class SystemCategoryArchiveException extends TransactionCategoryException {
  const SystemCategoryArchiveException(String categoryId)
    : super('Cannot archive system category', 'Category ID: $categoryId');
}

class CategoryUnknownException extends TransactionCategoryException {
  const CategoryUnknownException()
    : super(
        'Unknown category error',
        'An unknown error has occurred with the category',
      );
}
