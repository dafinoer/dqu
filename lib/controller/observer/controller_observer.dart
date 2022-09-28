import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class ControllerObserver extends ProviderObserver {
  final Logger logger;

  ControllerObserver(this.logger);

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    logger.i(
      'provider:${provider.name ?? provider.runtimeType}\n\n newValue:$newValue',
    );
  }
}
