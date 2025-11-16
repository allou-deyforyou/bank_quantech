/// Wrapper pour les resultats des données
sealed class Result<T> {
  const Result();

  factory Result.ok(T value) => Ok<T>(value);

  factory Result.error(Exception error) => Error<T>(error);

  /// Convertir en [Ok]
  Ok<T> get asOk => this as Ok<T>;

  /// Convertir en [Error]
  Error<T> get asError => this as Error<T>;

  /// Retourne true si [Result] est [Ok] et a une donnée
  bool get hasData => this is Ok<T>;

  /// Retourne true si [Result] est [Error]
  bool get hasError => this is Error<T>;

  T? get data => hasData ? asOk.value : null;

  // --- Helpers ajoutés ---

  /// Alias lisible pour `hasData`.
  bool get isOk => hasData;

  /// Alias lisible pour `hasError`.
  bool get isError => hasError;

  /// Déstructure le résultat.
  /// - onOk reçoit la valeur T,
  /// - onError reçoit l'Exception.
  R fold<R>({
    required R Function(T value) onOk,
    required R Function(Exception error) onError,
  }) {
    if (this is Ok<T>) return onOk(asOk.value);
    return onError(asError.error);
  }

  /// Variante plus courte de fold.
  R when<R>({
    required R Function(T value) ok,
    required R Function(Exception error) error,
  }) => fold(onOk: ok, onError: error);

  /// Transforme la valeur en conservant l'erreur telle quelle.
  Result<R> map<R>(R Function(T value) transform) {
    if (this is Ok<T>) return Result.ok(transform(asOk.value));
    return Result.error(asError.error);
  }

  /// Chaînage qui retourne déjà un Result (évite l'emboîtement).
  Result<R> flatMap<R>(Result<R> Function(T value) transform) {
    if (this is Ok<T>) return transform(asOk.value);
    return Result.error(asError.error);
  }

  /// Transforme la valeur via une fonction asynchrone.
  Future<Result<R>> asyncMap<R>(Future<R> Function(T value) transform) async {
    if (this is Ok<T>) {
      try {
        final v = await transform(asOk.value);
        return Result.ok(v);
      } catch (e) {
        return Result.error(e is Exception ? e : Exception(e.toString()));
      }
    }
    return Result.error(asError.error);
  }

  /// Chaînage asynchrone qui retourne déjà un Result futur.
  Future<Result<R>> asyncFlatMap<R>(
    Future<Result<R>> Function(T value) transform,
  ) {
    if (this is Ok<T>) return transform(asOk.value);
    return Future.value(Result.error(asError.error));
  }

  /// Effets de bord: exécute [onOk] si succès, [onError] si erreur, puis renvoie `this`.
  Result<T> tap({
    void Function(T value)? onOk,
    void Function(Exception error)? onError,
  }) {
    if (this is Ok<T>) {
      if (onOk != null) onOk(asOk.value);
    } else {
      if (onError != null) onError(asError.error);
    }
    return this;
  }

  /// Récupère la valeur ou renvoie [fallback] si erreur.
  T unwrapOr(T fallback) => hasData ? asOk.value : fallback;

  /// Récupère la valeur ou calcule un fallback à partir de l'Exception.
  T unwrapOrElse(T Function(Exception error) fallback) =>
      hasData ? asOk.value : fallback(asError.error);

  /// Exécute [fn] et capture automatiquement les exceptions en Result.
  static Result<R> guard<R>(R Function() fn) {
    try {
      return Result.ok(fn());
    } catch (e) {
      return Result.error(e is Exception ? e : Exception(e.toString()));
    }
  }

  /// Exécute [fn] (async) et capture automatiquement les exceptions en Result.
  static Future<Result<R>> guardAsync<R>(Future<R> Function() fn) async {
    try {
      final v = await fn();
      return Result.ok(v);
    } catch (e) {
      return Result.error(e is Exception ? e : Exception(e.toString()));
    }
  }
}

/// Sous-classe de [Result] pour les valeurs
final class Ok<T> extends Result<T> {
  const Ok(this.value);

  /// Valeur retournée dans Result
  final T value;

  @override
  String toString() => 'Result.ok($value)';
}

/// Sous-classe de [Result] pour les erreurs
final class Error<T> extends Result<T> {
  const Error(this.error);

  /// Erreur retournée dans Result
  final Exception error;

  @override
  String toString() => 'Result.error($error)';
}
