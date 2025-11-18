import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

/// Use case pour créer un nouveau compte
class CreateAccountUseCase {
  const CreateAccountUseCase(this._accountRepository);

  final AccountRepository _accountRepository;

  /// Crée un nouveau compte avec validation métier
  Future<Result<AccountEntity>> call({
    required String accountName,
    required AccountType type,
    required String currency,
    double initialBalance = 0.0,
  }) async {
    try {
      // Validation des données d'entrée
      final validationResult = await _validateAccountData(
        accountName: accountName,
        type: type,
        currency: currency,
        initialBalance: initialBalance,
      );

      if (!validationResult.hasData) {
        return Result.error(validationResult.asError.error);
      }

      // Création du compte
      return await _accountRepository.createAccount(
        accountName: accountName,
        type: type,
        currency: currency,
        initialBalance: initialBalance,
      );
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  /// Valide les données du compte
  Future<Result<bool>> _validateAccountData({
    required String accountName,
    required AccountType type,
    required String currency,
    required double initialBalance,
  }) async {
    // Validation du nom du compte
    if (accountName.trim().isEmpty) {
      return Result.error(
        InvalidAccountNameException(
          accountName,
          'Account name cannot be empty',
        ),
      );
    }

    if (accountName.trim().length < 3) {
      return Result.error(
        InvalidAccountNameException(
          accountName,
          'Account name must be at least 3 characters',
        ),
      );
    }

    // Validation de la devise
    if (!_supportedCurrencies.contains(currency.toUpperCase())) {
      return Result.error(UnsupportedCurrencyException(currency));
    }

    // Validation du solde initial
    if (initialBalance < 0 && type != AccountType.credit) {
      return Result.error(
        InvalidAmountException(
          initialBalance,
          'Initial balance cannot be negative for this account type',
        ),
      );
    }

    return Result.ok(true);
  }

  static const List<String> _supportedCurrencies = ['EUR', 'USD', 'GBP', 'CAD'];
}
