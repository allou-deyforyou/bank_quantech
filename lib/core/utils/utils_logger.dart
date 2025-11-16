import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final class LoggerObserver extends ProviderObserver {
  const LoggerObserver();

  void _logWithBox(String title, String message) {
    final titleLength = title.length;
    final int maxWidth = titleLength + 4; // Largeur maximale de la boîte

    final titleLines = _wrapText(title, maxWidth - 4);
    final messageLines = _wrapText(message, maxWidth - 4);

    final topBorder = '╔${'═' * maxWidth}╗';
    final separator = '║${'─' * maxWidth}║';
    final bottomBorder = '╚${'═' * maxWidth}╝';

    log(topBorder, name: 'RIVERPOD');

    // Afficher le titre
    for (String line in titleLines) {
      log('║  $line  ║', name: 'RIVERPOD');
    }

    log(separator, name: 'RIVERPOD');

    // Afficher le message
    for (String line in messageLines) {
      log('║ ${line.padRight(maxWidth - 2)} ║', name: 'RIVERPOD');
    }

    log(bottomBorder, name: 'RIVERPOD');
  }

  List<String> _wrapText(String text, int maxWidth) {
    if (text.length <= maxWidth) {
      return [text];
    }

    List<String> lines = [];
    int start = 0;

    while (start < text.length) {
      int end = start + maxWidth;
      if (end >= text.length) {
        lines.add(text.substring(start));
        break;
      }

      // Chercher le dernier espace avant la limite
      int lastSpace = text.lastIndexOf(' ', end);
      if (lastSpace > start) {
        lines.add(text.substring(start, lastSpace));
        start = lastSpace + 1;
      } else {
        // Pas d'espace trouvé, couper à la limite
        lines.add(text.substring(start, end));
        start = end;
      }
    }

    return lines;
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    _logWithBox(
      '${context.provider.name ?? 'PROVIDER'} UPDATED',
      '$previousValue -> $newValue',
    );
  }

  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    _logWithBox(
      '${context.provider.name ?? 'PROVIDER'} ADDED',
      'Value: $value',
    );
  }

  @override
  void didDisposeProvider(ProviderObserverContext context) {
    _logWithBox(
      '${context.provider.name ?? 'PROVIDER'} DISPOSED',
      'Provider has been disposed',
    );
  }
}
