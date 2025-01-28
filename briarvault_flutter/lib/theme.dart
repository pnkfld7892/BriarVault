import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff216a4d),
      surfaceTint: Color(0xff216a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa9f2cd),
      onPrimaryContainer: Color(0xff005137),
      secondary: Color(0xff8e4d2f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbcd),
      onSecondaryContainer: Color(0xff71361a),
      tertiary: Color(0xff745b0b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdf92),
      onTertiaryContainer: Color(0xff594400),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f0),
      onSurface: Color(0xff1f1b13),
      onSurfaceVariant: Color(0xff3f484a),
      outline: Color(0xff6f797a),
      outlineVariant: Color(0xffbfc8ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xff8dd5b2),
      primaryFixed: Color(0xffa9f2cd),
      onPrimaryFixed: Color(0xff002114),
      primaryFixedDim: Color(0xff8dd5b2),
      onPrimaryFixedVariant: Color(0xff005137),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff360f00),
      secondaryFixedDim: Color(0xffffb596),
      onSecondaryFixedVariant: Color(0xff71361a),
      tertiaryFixed: Color(0xffffdf92),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffe5c36c),
      onTertiaryFixedVariant: Color(0xff594400),
      surfaceDim: Color(0xffe1d9cc),
      surfaceBright: Color(0xfffff8f0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf3e5),
      surfaceContainer: Color(0xfff5eddf),
      surfaceContainerHigh: Color(0xffefe7d9),
      surfaceContainerHighest: Color(0xffeae1d4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003f2a),
      surfaceTint: Color(0xff216a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff327a5b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5c260b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa05b3c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff453400),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff846a1c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f0),
      onSurface: Color(0xff141109),
      onSurfaceVariant: Color(0xff2f3839),
      outline: Color(0xff4b5456),
      outlineVariant: Color(0xff656f70),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xff8dd5b2),
      primaryFixed: Color(0xff327a5b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff136044),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa05b3c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff824426),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff846a1c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6a5100),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcdc6b9),
      surfaceBright: Color(0xfffff8f0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf3e5),
      surfaceContainer: Color(0xffefe7d9),
      surfaceContainerHigh: Color(0xffe4dcce),
      surfaceContainerHighest: Color(0xffd8d1c3),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003322),
      surfaceTint: Color(0xff216a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff005439),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4f1d03),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff74391c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff382a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5c4600),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f0),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff252e2f),
      outlineVariant: Color(0xff414b4c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xff8dd5b2),
      primaryFixed: Color(0xff005439),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003b27),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff74391c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff572308),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5c4600),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff403000),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbfb8ab),
      surfaceBright: Color(0xfffff8f0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8f0e2),
      surfaceContainer: Color(0xffeae1d4),
      surfaceContainerHigh: Color(0xffdbd3c6),
      surfaceContainerHighest: Color(0xffcdc6b9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8dd5b2),
      surfaceTint: Color(0xff8dd5b2),
      onPrimary: Color(0xff003825),
      primaryContainer: Color(0xff005137),
      onPrimaryContainer: Color(0xffa9f2cd),
      secondary: Color(0xffffb596),
      onSecondary: Color(0xff542106),
      secondaryContainer: Color(0xff71361a),
      onSecondaryContainer: Color(0xffffdbcd),
      tertiary: Color(0xffe5c36c),
      onTertiary: Color(0xff3e2e00),
      tertiaryContainer: Color(0xff594400),
      onTertiaryContainer: Color(0xffffdf92),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff16130b),
      onSurface: Color(0xffeae1d4),
      onSurfaceVariant: Color(0xffbfc8ca),
      outline: Color(0xff899294),
      outlineVariant: Color(0xff3f484a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae1d4),
      inversePrimary: Color(0xff216a4d),
      primaryFixed: Color(0xffa9f2cd),
      onPrimaryFixed: Color(0xff002114),
      primaryFixedDim: Color(0xff8dd5b2),
      onPrimaryFixedVariant: Color(0xff005137),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff360f00),
      secondaryFixedDim: Color(0xffffb596),
      onSecondaryFixedVariant: Color(0xff71361a),
      tertiaryFixed: Color(0xffffdf92),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffe5c36c),
      onTertiaryFixedVariant: Color(0xff594400),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff3d392f),
      surfaceContainerLowest: Color(0xff110e07),
      surfaceContainerLow: Color(0xff1f1b13),
      surfaceContainer: Color(0xff231f17),
      surfaceContainerHigh: Color(0xff2d2a21),
      surfaceContainerHighest: Color(0xff38342b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa3ecc7),
      surfaceTint: Color(0xff8dd5b2),
      onPrimary: Color(0xff002c1c),
      primaryContainer: Color(0xff589e7e),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd3c1),
      onSecondary: Color(0xff461600),
      secondaryContainer: Color(0xffca7e5c),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffcd980),
      onTertiary: Color(0xff312400),
      tertiaryContainer: Color(0xffab8d3d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff16130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd4dee0),
      outline: Color(0xffaab4b5),
      outlineVariant: Color(0xff889294),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae1d4),
      inversePrimary: Color(0xff005338),
      primaryFixed: Color(0xffa9f2cd),
      onPrimaryFixed: Color(0xff00150b),
      primaryFixedDim: Color(0xff8dd5b2),
      onPrimaryFixedVariant: Color(0xff003f2a),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff250800),
      secondaryFixedDim: Color(0xffffb596),
      onSecondaryFixedVariant: Color(0xff5c260b),
      tertiaryFixed: Color(0xffffdf92),
      onTertiaryFixed: Color(0xff181000),
      tertiaryFixedDim: Color(0xffe5c36c),
      onTertiaryFixedVariant: Color(0xff453400),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff48443a),
      surfaceContainerLowest: Color(0xff090703),
      surfaceContainerLow: Color(0xff211d15),
      surfaceContainer: Color(0xff2b281f),
      surfaceContainerHigh: Color(0xff363229),
      surfaceContainerHighest: Color(0xff423d34),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb9ffdb),
      surfaceTint: Color(0xff8dd5b2),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff8ad1ae),
      onPrimaryContainer: Color(0xff000e07),
      secondary: Color(0xffffece5),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffb08e),
      onSecondaryContainer: Color(0xff1b0500),
      tertiary: Color(0xffffeecc),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe1bf69),
      onTertiaryContainer: Color(0xff110a00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff16130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe8f2f3),
      outlineVariant: Color(0xffbbc4c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae1d4),
      inversePrimary: Color(0xff005338),
      primaryFixed: Color(0xffa9f2cd),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff8dd5b2),
      onPrimaryFixedVariant: Color(0xff00150b),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb596),
      onSecondaryFixedVariant: Color(0xff250800),
      tertiaryFixed: Color(0xffffdf92),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe5c36c),
      onTertiaryFixedVariant: Color(0xff181000),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff545045),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff231f17),
      surfaceContainer: Color(0xff343027),
      surfaceContainerHigh: Color(0xff3f3b31),
      surfaceContainerHighest: Color(0xff4b463c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
