import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

final class CreditCardRepositoryDioImpl implements CreditCardRepository {
  CreditCardRepositoryDioImpl({required DioDataSource dioDataSource})
    : _dioDataSource = dioDataSource;

  final DioDataSource _dioDataSource;

  void toDelete() {
    var _ = _dioDataSource;
  }

  @override
  String toString() {
    return '$runtimeType()';
  }

  @override
  Stream<Result<List<CreditCardEntity>>> watchAllCreditCards() async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Stream<Result<CreditCardEntity>> watchCreditCardById(String cardId) async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Future<Result<CreditCardEntity>> createCreditCard({
    required CardType cardType,
    required String cardColor,
    required String cardHolderName,
    required String cardNumber,
    required DateTime expiryDate,
    required String cvv,
  }) async {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Future<Result<CreditCardEntity>> updateCreditCard(
    String cardId, {
    required CardType? cardType,
    required String? cardColor,
  }) async {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Future<Result<void>> deleteCreditCard(String cardId) async {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }

  @override
  Stream<Result<List<CreditCardEntity>>> watchActiveCreditCards() async* {
    // Since DioDataSource is not implemented, we will mock the data similar to MockDataSource
    throw UnimplementedError('DioDataSource is not implemented yet.');
  }
}
