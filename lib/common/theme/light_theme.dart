import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extension/custom_theme_extension.dart';
import '../utils/colours.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: Colours.backgroundLight,
    extensions: [
      CustomThemeExtension.lightMode,
    ],
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 18),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.greenLight,
        foregroundColor: Colours.backgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colours.backgroundLight,
      modalBackgroundColor: Colours.backgroundLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: Colours.backgroundLight,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    // colorScheme: ColorScheme(background: Colours.backgroundLight),
  );
}
