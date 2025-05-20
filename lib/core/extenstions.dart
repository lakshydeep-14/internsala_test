import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:flutter/services.dart';
export './app_font_size.dart';
export './text_theme.dart';
export '../gen/assets.gen.dart';
export '../gen/colors.gen.dart';
export '../gen/fonts.gen.dart';
export 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get text => theme.textTheme;
  double get devicePaddingTop => MediaQuery.of(this).padding.top;
  double get devicePaddingBottom => MediaQuery.of(this).padding.bottom;
  double get viewInsets => MediaQuery.of(this).viewInsets.bottom;
  double get deviceHeight => MediaQuery.of(this).size.height;
  double get deviceWidth => MediaQuery.of(this).size.width;
  void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    FocusScope.of(this).unfocus();
  }
}
