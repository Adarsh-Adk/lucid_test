import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/app_constants.dart';
import 'app_color_scheme.dart';
import 'button_theme.dart';
import 'input_theme.dart';

class AppTheme {
  static ThemeData light() {
    var themeData = ThemeData(
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColorScheme.backgroundColorLight,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle:
              TextStyle(color: AppColorScheme.surfaceColorLight),
          unselectedLabelStyle:
              TextStyle(color: AppColorScheme.primaryContainerColorLight),
          selectedItemColor: AppColorScheme.surfaceColorLight,
          unselectedItemColor: AppColorScheme.primaryContainerColorLight),
      primarySwatch: generateMaterialColor(AppColorScheme.primaryColorLight),
      primaryColor: AppColorScheme.primaryColorLight,
      hintColor: AppColorScheme.primaryContainerColorLight.withOpacity(0.7),
      cardColor: AppColorScheme.backgroundColorLight,
      backgroundColor: AppColorScheme.backgroundColorLight,
      // accentColor: AppColorScheme.backgroundColorLight,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColorScheme.primaryColorLight,
        // primaryVariant: AppColorScheme.primaryVariantColorLight,
        primaryContainer: AppColorScheme.primaryContainerColorLight,
        secondary: AppColorScheme.secondaryColorLight,
        error: AppColorScheme.error,
        background: AppColorScheme.backgroundColorLight,
        surface: AppColorScheme.surfaceColorLight,
        onBackground: AppColorScheme.primaryContainerColorLight,
        onError: AppColorScheme.onPrimaryColorLight,
        onPrimary: AppColorScheme.onPrimaryColorLight,
        onSecondary: AppColorScheme.onPrimaryColorLight,
        onSurface: AppColorScheme.onSurfaceColorLight,
      ),
      iconTheme:
          const IconThemeData(color: AppColorScheme.onBackgroundColorLight),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(borderRadius: AppConstants.borderRadius),
        tileColor: AppColorScheme.backgroundColorLight,
      ),

      textTheme: const TextTheme(
        displaySmall: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        bodyLarge: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        bodyMedium: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        bodySmall: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        displayLarge: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        displayMedium: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        headlineMedium: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        headlineSmall: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        titleLarge: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        labelSmall: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        titleMedium: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
          // fontFamily: Assets.ChapparalPro,
        ),
        titleSmall: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        labelLarge: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
        labelMedium: TextStyle(
          color: AppColorScheme.primaryContainerColorLight,
        ),
      ),
      outlinedButtonTheme: AppButtonThemeData.outlinedButtonThemeData(),
      elevatedButtonTheme: AppButtonThemeData.elevatedButtonThemeData(),
      textButtonTheme: AppButtonThemeData.textButtonThemeData(),
      scaffoldBackgroundColor: AppColorScheme.backgroundColorLight,
      inputDecorationTheme: InputTheme.inputTheme,
      dropdownMenuTheme:
          DropdownMenuThemeData(inputDecorationTheme: InputTheme.inputTheme),
      canvasColor: AppColorScheme.backgroundColorLight,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColorScheme.primaryColorLight),
      cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.cornerRadius),
          ),
          color: AppColorScheme.backgroundColorLight,
          clipBehavior: Clip.hardEdge,
          elevation: AppConstants.elevation),
      appBarTheme: const AppBarTheme(
          toolbarHeight: 80,
          color: AppColorScheme.surfaceColorLight,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          // brightness: Brightness.light,
          titleTextStyle:
              TextStyle(color: AppColorScheme.primaryContainerColorLight),
          elevation: 0,
          iconTheme:
              IconThemeData(color: AppColorScheme.primaryContainerColorLight),
          toolbarTextStyle: TextStyle(
            color: AppColorScheme.primaryColorLight,
          )
          // textTheme: TextTheme(
          //   headline4: TextStyle(
          //     color: AppColorScheme.primaryColorLight,
          //     fontFamily: Assets.Helvetica,
          //   ),
          // ),
          ),
      // bottomAppBarTheme:
      //     BottomAppBarTheme(color: Palette.ACCENT, elevation: 12,),
    );
    return themeData;
  }
}
