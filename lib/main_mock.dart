import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bank_quantech/core/core.dart';
import 'package:bank_quantech/feature/feature.dart';

void main() {
  runApp(
    ProviderScope(
      retry: (retryCount, error) => null,
      overrides: [
        // 
      ],
      observers: const [LoggerObserver()],
      child: const MyApp(),
    ),
  );
}
