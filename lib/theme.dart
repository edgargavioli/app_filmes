import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff904a42),
      surfaceTint: Color(0xff904a42),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad5),
      onPrimaryContainer: Color(0xff73342c),
      secondary: Color(0xff775652),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad5),
      onSecondaryContainer: Color(0xff5d3f3b),
      tertiary: Color(0xff715c2e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfffddfa6),
      onTertiaryContainer: Color(0xff574419),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff231918),
      onSurfaceVariant: Color(0xff534341),
      outline: Color(0xff857370),
      outlineVariant: Color(0xffd8c2be),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inversePrimary: Color(0xffffb4aa),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff3b0906),
      primaryFixedDim: Color(0xffffb4aa),
      onPrimaryFixedVariant: Color(0xff73342c),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff2c1512),
      secondaryFixedDim: Color(0xffe7bdb7),
      onSecondaryFixedVariant: Color(0xff5d3f3b),
      tertiaryFixed: Color(0xfffddfa6),
      onTertiaryFixed: Color(0xff261a00),
      tertiaryFixedDim: Color(0xffdfc38c),
      onTertiaryFixedVariant: Color(0xff574419),
      surfaceDim: Color(0xffe8d6d4),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfffceae7),
      surfaceContainerHigh: Color(0xfff7e4e2),
      surfaceContainerHighest: Color(0xfff1dedc),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5e241d),
      surfaceTint: Color(0xff904a42),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa25850),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4b2f2b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff876560),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff453409),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff806a3b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff180f0e),
      onSurfaceVariant: Color(0xff413331),
      outline: Color(0xff5f4f4c),
      outlineVariant: Color(0xff7b6967),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inversePrimary: Color(0xffffb4aa),
      primaryFixed: Color(0xffa25850),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff844139),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff876560),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6d4d49),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff806a3b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff665225),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd4c3c0),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfff7e4e2),
      surfaceContainerHigh: Color(0xffebd9d6),
      surfaceContainerHighest: Color(0xffdfcecb),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff511a14),
      surfaceTint: Color(0xff904a42),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff76362f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3f2522),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff60423e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3a2a02),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5a461b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff362927),
      outlineVariant: Color(0xff554543),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inversePrimary: Color(0xffffb4aa),
      primaryFixed: Color(0xff76362f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff59201a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff60423e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff472c28),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5a461b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff413006),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6b5b3),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffedea),
      surfaceContainer: Color(0xfff1dedc),
      surfaceContainerHigh: Color(0xffe2d0ce),
      surfaceContainerHighest: Color(0xffd4c3c0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4aa),
      surfaceTint: Color(0xffffb4aa),
      onPrimary: Color(0xff561e18),
      primaryContainer: Color(0xff73342c),
      onPrimaryContainer: Color(0xffffdad5),
      secondary: Color(0xffe7bdb7),
      onSecondary: Color(0xff442926),
      secondaryContainer: Color(0xff5d3f3b),
      onSecondaryContainer: Color(0xffffdad5),
      tertiary: Color(0xffdfc38c),
      onTertiary: Color(0xff3f2e04),
      tertiaryContainer: Color(0xff574419),
      onTertiaryContainer: Color(0xfffddfa6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a1110),
      onSurface: Color(0xfff1dedc),
      onSurfaceVariant: Color(0xffd8c2be),
      outline: Color(0xffa08c8a),
      outlineVariant: Color(0xff534341),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inversePrimary: Color(0xff904a42),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff3b0906),
      primaryFixedDim: Color(0xffffb4aa),
      onPrimaryFixedVariant: Color(0xff73342c),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff2c1512),
      secondaryFixedDim: Color(0xffe7bdb7),
      onSecondaryFixedVariant: Color(0xff5d3f3b),
      tertiaryFixed: Color(0xfffddfa6),
      onTertiaryFixed: Color(0xff261a00),
      tertiaryFixedDim: Color(0xffdfc38c),
      onTertiaryFixedVariant: Color(0xff574419),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423735),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322826),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd2cc),
      surfaceTint: Color(0xffffb4aa),
      onPrimary: Color(0xff48130f),
      primaryContainer: Color(0xffcc7b71),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffed2cc),
      onSecondary: Color(0xff381f1c),
      secondaryContainer: Color(0xffae8883),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff6d9a0),
      onTertiary: Color(0xff322300),
      tertiaryContainer: Color(0xffa68e5b),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a1110),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeed7d4),
      outline: Color(0xffc2adaa),
      outlineVariant: Color(0xffa08c89),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inversePrimary: Color(0xff74352d),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff2c0101),
      primaryFixedDim: Color(0xffffb4aa),
      onPrimaryFixedVariant: Color(0xff5e241d),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff200b08),
      secondaryFixedDim: Color(0xffe7bdb7),
      onSecondaryFixedVariant: Color(0xff4b2f2b),
      tertiaryFixed: Color(0xfffddfa6),
      onTertiaryFixed: Color(0xff191000),
      tertiaryFixedDim: Color(0xffdfc38c),
      onTertiaryFixedVariant: Color(0xff453409),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff4e4240),
      surfaceContainerLowest: Color(0xff0d0605),
      surfaceContainerLow: Color(0xff251b1a),
      surfaceContainer: Color(0xff302524),
      surfaceContainerHigh: Color(0xff3b302f),
      surfaceContainerHighest: Color(0xff463b39),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece9),
      surfaceTint: Color(0xffffb4aa),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffaea4),
      onPrimaryContainer: Color(0xff220000),
      secondary: Color(0xffffece9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe3b9b3),
      onSecondaryContainer: Color(0xff190604),
      tertiary: Color(0xffffeed2),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffdbbf89),
      onTertiaryContainer: Color(0xff110a00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1a1110),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece9),
      outlineVariant: Color(0xffd4bebb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inversePrimary: Color(0xff74352d),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb4aa),
      onPrimaryFixedVariant: Color(0xff2c0101),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe7bdb7),
      onSecondaryFixedVariant: Color(0xff200b08),
      tertiaryFixed: Color(0xfffddfa6),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffdfc38c),
      onTertiaryFixedVariant: Color(0xff191000),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff5a4d4c),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff271d1c),
      surfaceContainer: Color(0xff392e2c),
      surfaceContainerHigh: Color(0xff443937),
      surfaceContainerHighest: Color(0xff504442),
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

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xffb81d24),
    value: Color(0xffb81d24),
    light: ColorFamily(
      color: Color(0xff904a45),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdad7),
      onColorContainer: Color(0xff733330),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff904a45),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdad7),
      onColorContainer: Color(0xff733330),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff904a45),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdad7),
      onColorContainer: Color(0xff733330),
    ),
    dark: ColorFamily(
      color: Color(0xffffb3ad),
      onColor: Color(0xff571e1b),
      colorContainer: Color(0xff733330),
      onColorContainer: Color(0xffffdad7),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffb3ad),
      onColor: Color(0xff571e1b),
      colorContainer: Color(0xff733330),
      onColorContainer: Color(0xffffdad7),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffb3ad),
      onColor: Color(0xff571e1b),
      colorContainer: Color(0xff733330),
      onColorContainer: Color(0xffffdad7),
    ),
  );

  /// Custom Color 2
  static const customColor2 = ExtendedColor(
    seed: Color(0xff221f1f),
    value: Color(0xff221f1f),
    light: ColorFamily(
      color: Color(0xff8f4a51),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdadb),
      onColorContainer: Color(0xff72333a),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff8f4a51),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdadb),
      onColorContainer: Color(0xff72333a),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff8f4a51),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdadb),
      onColorContainer: Color(0xff72333a),
    ),
    dark: ColorFamily(
      color: Color(0xffffb2b8),
      onColor: Color(0xff561d25),
      colorContainer: Color(0xff72333a),
      onColorContainer: Color(0xffffdadb),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffb2b8),
      onColor: Color(0xff561d25),
      colorContainer: Color(0xff72333a),
      onColorContainer: Color(0xffffdadb),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffb2b8),
      onColor: Color(0xff561d25),
      colorContainer: Color(0xff72333a),
      onColorContainer: Color(0xffffdadb),
    ),
  );

  /// Custom Color 3
  static const customColor3 = ExtendedColor(
    seed: Color(0xfff5f5f1),
    value: Color(0xfff5f5f1),
    light: ColorFamily(
      color: Color(0xff2e6a44),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c1),
      onColorContainer: Color(0xff11512e),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff2e6a44),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c1),
      onColorContainer: Color(0xff11512e),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff2e6a44),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c1),
      onColorContainer: Color(0xff11512e),
    ),
    dark: ColorFamily(
      color: Color(0xff96d5a7),
      onColor: Color(0xff00391c),
      colorContainer: Color(0xff11512e),
      onColorContainer: Color(0xffb1f1c1),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff96d5a7),
      onColor: Color(0xff00391c),
      colorContainer: Color(0xff11512e),
      onColorContainer: Color(0xffb1f1c1),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff96d5a7),
      onColor: Color(0xff00391c),
      colorContainer: Color(0xff11512e),
      onColorContainer: Color(0xffb1f1c1),
    ),
  );


  List<ExtendedColor> get extendedColors => [
    customColor1,
    customColor2,
    customColor3,
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
