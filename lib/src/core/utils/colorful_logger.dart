import 'package:logger/logger.dart';

enum ColorfulLoggerColor { green, pink, white }

class ColorfulLogger extends LogPrinter {
  final ColorfulLoggerColor type;

  ColorfulLogger({this.type = ColorfulLoggerColor.green});

  @override
  List<String> log(LogEvent event) {
    const resetColor = '\x1B[0m';
    final color = switch (type) {
      ColorfulLoggerColor.green => '\x1B[32m', // ANSI code for green
      ColorfulLoggerColor.pink => '\x1B[35m', // ANSI code for pink/magenta
      ColorfulLoggerColor.white => '\x1B[37m', // ANSI code for white
    };

    return [color + event.message.toString() + resetColor];
  }
}
