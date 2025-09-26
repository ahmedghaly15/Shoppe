part of 'utils.dart';

class DebugLogger {
  DebugLogger._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(colors: true, printEmojis: true),
  );

  static void log(String message) {
    if (!kReleaseMode) {
      _logger.d(message);
    }
  }
}
