import 'package:flutter/cupertino.dart';

class FontSize {
  final BuildContext context;
  FontSize(this.context);

  MediaQueryData get _mq => MediaQuery.of(context);

  double get width => _mq.size.width;
  double get height => _mq.size.height;

  double get headlineLarge => _responsive(32);
  double get headlineMedium => _responsive(24);
  double get headlineSmall => _responsive(20);
  double get bodyLarge => _responsive(16);
  double get bodyMedium => _responsive(14);
  double get bodySmall => _responsive(12);
  double get labelLarge => _responsive(14);
  double get labelMedium => _responsive(12);
  double get labelSmall => _responsive(10);


  double _responsive(double size) {
    double scale = width / 375;
    return (size * scale).clamp(size * 0.85, size * 1.2);
  }

}

extension AppSizeExtension on BuildContext {
  FontSize get fontSize => FontSize(this);
}