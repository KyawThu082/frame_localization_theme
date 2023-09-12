import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extension/custom_theme_extension.dart';
import '../utils/colours.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: Colours.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 18),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.greenDark,
        foregroundColor: Colours.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colours.greyBackground,
      modalBackgroundColor: Colours.greyBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: Colours.greyBackground,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    // colorScheme: ColorScheme(background: Colours.backgroundDark),
  );
}
