import 'dart:core' show double;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSpacing {
  // space value
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;

  // edge insest shorcuts
  static const EdgeInsets paddingXs = EdgeInsets.all(xs);
  static const EdgeInsets paddingSm = EdgeInsets.all(sm);
  static const EdgeInsets paddingMd = EdgeInsets.all(md);
  static const EdgeInsets paddingLg = EdgeInsets.all(lg);
  static const EdgeInsets paddingXl = EdgeInsets.all(xl);
  static const EdgeInsets paddingXxl = EdgeInsets.all(xxl);

// horizontal padding horizontal 
static const EdgeInsets horizontalXs = EdgeInsets.symmetric(horizontal: xs);
static const EdgeInsets horizontalSm = EdgeInsets.symmetric(horizontal: sm);
static const EdgeInsets horizontalMd = EdgeInsets.symmetric(horizontal: md);
static const EdgeInsets horizontalLg = EdgeInsets.symmetric(horizontal: lg);
static const EdgeInsets horizontalXl = EdgeInsets.symmetric(horizontal: xl);
static const EdgeInsets horizontalXxl = EdgeInsets.symmetric(horizontal: xxl);

// vertical padding
static const EdgeInsets verticalXs = EdgeInsets.symmetric(vertical: xs);
static const EdgeInsets verticalSm = EdgeInsets.symmetric(vertical: sm);
static const EdgeInsets verticalMd = EdgeInsets.symmetric(vertical: md);
static const EdgeInsets verticalLg = EdgeInsets.symmetric(vertical: lg);
static const EdgeInsets verticalXl = EdgeInsets.symmetric(vertical: xl);
static const EdgeInsets verticalXxl = EdgeInsets.symmetric(vertical: xxl);



}

/// Border radius constraints for consistent rounded corners 
class AppRadius {
    
  
  
  // static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  
  static const double circular = 100.0;
  static const double xxl = 48.0;
  }
// Text style exteinson 

extension TextStyleContext on BuildContext {
  TextTheme get TextStyle => Theme.of(this).textTheme;
}
extension TextStyleExtensions on TextStyle {
TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
TextStyle get light => copyWith(fontWeight: FontWeight.w300);
TextStyle withColor(Color color) => copyWith(color: color);
TextStyle withSize(double fontSize) => copyWith(fontSize: fontSize);

}

// colors

// themes colors health , clean dermatoog plaette
class LightModeColors {
  // Primary: Teal/Mint for freshness and health
  static const lightPrimary = Color(0xFF00796B); // Deep Teal
  static const lightOnPrimary = Color(0xFFFFFFFF);
  static const lightPrimaryContainer = Color(0xFFB2DFDB);
  static const lightOnPrimaryContainer = Color(0xFF004D40);

  // Secondary: Soft Salmon for "skin" nuances without being too pink
  static const lightSecondary = Color(0xFFFF8A65);
  static const lightOnSecondary = Color(0xFFFFFFFF);
  static const lightSecondaryContainer = Color(0xFFFFDAB9);
  static const lightOnSecondaryContainer = Color(0xFFBF360C);

  // Tertiary: Lavender for calming vibes
  static const lightTertiary = Color(0xFF7E57C2);
  static const lightOnTertiary = Color(0xFFFFFFFF);
  static const lightTertiaryContainer = Color(0xFFD1C4E9);

  // Error colors
  static const lightError = Color(0xFFBA1A1A);
  static const lightOnError = Color(0xFFFFFFFF);
  static const lightErrorContainer = Color(0xFFFFDAD6);
  static const lightOnErrorContainer = Color(0xFF410002);

  // Surface and background
  static const lightSurface = Color(0xFFFBFCFD); // Off-white
  static const lightOnSurface = Color(0xFF191C1C);
  static const lightBackground = Color(0xFFF0F4F4); // Very pale mint/grey
  static const lightSurfaceVariant = Color(0xFFDAE5E4);
  static const lightOnSurfaceVariant = Color(0xFF3F4948);
  
  static const lightOutline = Color(0xFF6F7979);
  static const lightShadow = Color(0xFF000000);
  static const lightInversePrimary = Color(0xFF4DB6AC);







}


class DarkModeColors {
  // Primary: Lighter Teal
  static const darkPrimary = Color(0xFF80CBC4);
  static const darkOnPrimary = Color(0xFF003730);
  static const darkPrimaryContainer = Color(0xFF004F45);
  static const darkOnPrimaryContainer = Color(0xFFB2DFDB);

  // Secondary
  static const darkSecondary = Color(0xFFFFCCBC);
  static const darkOnSecondary = Color(0xFF572500);
  static const darkSecondaryContainer = Color(0xFF572500);
  static const darkOnSecondaryContainer = Color(0xFFFFCCBC);

  // Tertiary
  static const darkTertiary = Color(0xFFB39DDB);
  static const darkOnTertiary = Color(0xFF311B92);
  static const darkTertiaryContainer = Color(0xFF4A378B);
  static const darkOnTertiaryContainer = Color(0xFFD1C4E9);

  // Error
  static const darkError = Color(0xFFFFB4AB);
  static const darkOnError = Color(0xFF690005);
  static const darkErrorContainer = Color(0xFF93000A);
  static const darkOnErrorContainer = Color(0xFFFFDAD6);

  // Surface
  static const darkSurface = Color(0xFF191C1C);
  static const darkOnSurface = Color(0xFFE0E3E3);
  static const darkSurfaceVariant = Color(0xFF3F4948);
  static const darkOnSurfaceVariant = Color(0xFFBFC9C8);
  
  static const darkOutline = Color(0xFF899392);
  static const darkShadow = Color(0xFF000000);
  static const darkInversePrimary = Color(0xFF00695C);
}

class FontSizes {
static const double displayLarge = 57.0;
static const double displayMedium = 45.0;
static const double displaySmall = 36.0;
static const double headlineLarge = 32.0;
static const double headlineMedium = 28.0;
static const double headlineSmall = 24.0;
static const double titleLarge = 22.0;
static const double titleMedium = 16.0;
static const double titleSmall = 14.0;
static const double bodyLarge = 16.0;
static const double bodyMedium = 14.0;
static const double bodySmall = 12.0;
static const double labelLarge = 14.0;
static const double labelMedium = 12.0;
static const double labelSmall = 11.0;


}

// THEMES

ThemeData get lightTheme => ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: LightModeColors.lightPrimary,
    onPrimary: LightModeColors.lightOnPrimary,
    primaryContainer: LightModeColors.lightPrimaryContainer,
    onPrimaryContainer: LightModeColors.lightOnPrimaryContainer,
    secondary: LightModeColors.lightSecondary,
    onSecondary: LightModeColors.lightOnSecondary,
    secondaryContainer: LightModeColors.lightSecondaryContainer,
    onSecondaryContainer: LightModeColors.lightOnSecondaryContainer,
    tertiary: LightModeColors.lightTertiary,
    onTertiary: LightModeColors.lightOnTertiary,
    tertiaryContainer: LightModeColors.lightTertiaryContainer,
    error: LightModeColors.lightError,
    onError: LightModeColors.lightOnError,
    errorContainer: LightModeColors.lightErrorContainer,
    onErrorContainer: LightModeColors.lightOnErrorContainer,
    surface: LightModeColors.lightSurface,
    onSurface: LightModeColors.lightOnSurface,
    surfaceContainerHighest: LightModeColors.lightSurfaceVariant,
    onSurfaceVariant: LightModeColors.lightOnSurfaceVariant,
    outline: LightModeColors.lightOutline,
    shadow: LightModeColors.lightShadow,
    inversePrimary: LightModeColors.lightInversePrimary,
    
  ),

brightness: Brightness.light,
scaffoldBackgroundColor: LightModeColors.lightBackground,
appBarTheme: AppBarTheme(
  backgroundColor: Colors.transparent,
  foregroundColor: LightModeColors.lightOnSurface,
  elevation: 0,
  scrolledUnderElevation: 0,
  centerTitle: true,
),
cardTheme: CardThemeData(
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    side: BorderSide(
      color: LightModeColors.lightOutline.withValues(alpha: 0.1),
      width: 1,
    ),
  ),
  color: Colors.white,
  margin: EdgeInsets.zero,
),
elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: LightModeColors.lightPrimary,
    foregroundColor: LightModeColors.lightOnPrimary,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),
),
floatingActionButtonTheme: FloatingActionButtonThemeData(
  backgroundColor: LightModeColors.lightSecondary,
  foregroundColor: LightModeColors.lightOnSecondary,
  elevation: 2,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
),
inputDecorationTheme: InputDecorationTheme(
  filled: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: LightModeColors.lightOutline.withValues(alpha: 0.1),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: LightModeColors.lightOutline.withValues(alpha: 2),
    ),
  ),
  contentPadding: const EdgeInsets.all(16),
),
textTheme: _buildTextTheme(Brightness.light),
);

ThemeData get darkTheme => ThemeData(
useMaterial3: true,
colorScheme: ColorScheme.dark(
  primary: DarkModeColors.darkPrimary,
  onPrimary: DarkModeColors.darkOnPrimary,
  primaryContainer: DarkModeColors.darkPrimaryContainer,
  onPrimaryContainer: DarkModeColors.darkOnPrimaryContainer,
  secondary: DarkModeColors.darkSecondary,
  onSecondary: DarkModeColors.darkOnSecondaryContainer,
  secondaryContainer: DarkModeColors.darkSecondaryContainer,
  onSecondaryContainer: DarkModeColors.darkOnSecondaryContainer,
  tertiary: DarkModeColors.darkTertiary,
  onTertiary: DarkModeColors.darkOnTertiary,
  tertiaryContainer: DarkModeColors.darkTertiaryContainer,
  error: DarkModeColors.darkError,
  onError: DarkModeColors.darkOnError,
  errorContainer: DarkModeColors.darkErrorContainer,
  onErrorContainer: DarkModeColors.darkOnErrorContainer,
  surface: DarkModeColors.darkSurface,
  onSurface: DarkModeColors.darkOnSurface,
  surfaceContainerHighest: DarkModeColors.darkSurfaceVariant,
  onSurfaceVariant: DarkModeColors.darkOnSurfaceVariant,
  outline: DarkModeColors.darkOutline,
  shadow: DarkModeColors.darkShadow,
  inversePrimary: DarkModeColors.darkInversePrimary,
),
brightness: Brightness.dark,
scaffoldBackgroundColor: DarkModeColors.darkSurface,
appBarTheme: AppBarTheme(
  backgroundColor: Colors.transparent,
  foregroundColor: DarkModeColors.darkOnSurface,
  elevation: 0,
  scrolledUnderElevation: 0,
  centerTitle: true,
),
cardTheme: CardThemeData(
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
    side: BorderSide(
      color: DarkModeColors.darkOutline.withValues(alpha: 0.2),
      width: 1,
    ),
  ),
  margin: EdgeInsets.zero,
),
elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: DarkModeColors.darkPrimary,
    foregroundColor: DarkModeColors.darkOnPrimary,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),
),
floatingActionButtonTheme: FloatingActionButtonThemeData(
  backgroundColor: DarkModeColors.darkSecondary,
  foregroundColor: DarkModeColors.darkOnSecondary,
  elevation: 2,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
),
inputDecorationTheme: InputDecorationTheme(
  filled: true,
  fillColor: DarkModeColors.darkSurfaceVariant.withValues(alpha: 0.3),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: DarkModeColors.darkOutline.withValues(alpha: 0.1),
      width: 2,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: DarkModeColors.darkOutline.withValues(alpha: 0.1),
    ),
  ),
  contentPadding: const EdgeInsets.all(16),
),
textTheme: _buildTextTheme(Brightness.dark),
);

TextTheme _buildTextTheme(Brightness brightness) {
  // using quicksand fonts for a softer, more  modern/ friendly health loook
  return TextTheme(
    displayLarge: GoogleFonts.quicksand(
      fontSize: FontSizes.displayLarge,
      fontWeight: FontWeight.bold,
    ),  
    displayMedium: GoogleFonts.quicksand(
      fontSize: FontSizes.displayMedium,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.quicksand(
      fontSize: FontSizes.displaySmall,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: GoogleFonts.quicksand(
      fontSize: FontSizes.headlineLarge,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.quicksand(
      fontSize: FontSizes.headlineMedium,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.quicksand(
      fontSize: FontSizes.headlineSmall,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.quicksand(
      fontSize: FontSizes.titleLarge,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.quicksand(
      fontSize: FontSizes.titleMedium,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: GoogleFonts.quicksand(
      fontSize: FontSizes.titleSmall,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.quicksand(
      fontSize: FontSizes.bodyLarge,
    ),
    bodyMedium: GoogleFonts.quicksand(
      fontSize: FontSizes.bodyMedium,
    ),
    bodySmall: GoogleFonts.quicksand(
      fontSize: FontSizes.bodySmall,
    ),
    labelLarge: GoogleFonts.quicksand(
      fontSize: FontSizes.labelLarge,
    ),
    labelMedium: GoogleFonts.quicksand(
      fontSize: FontSizes.labelMedium,
    ),
    labelSmall: GoogleFonts.quicksand(
      fontSize: FontSizes.labelSmall,
    ),
  );
}
