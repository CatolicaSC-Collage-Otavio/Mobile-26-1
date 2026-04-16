import 'package:flutter/material.dart';
import 'package:scape_thread/theme/base_theme.dart';

abstract class AppLightTheme {
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    colorScheme: _colorScheme,
    scaffoldBackgroundColor: AppThemeTokens.surface50,
    canvasColor: AppThemeTokens.surface50,
    appBarTheme: _appBarTheme,
    cardTheme: _cardTheme,
    dialogTheme: _dialogTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme,
    textButtonTheme: _textButtonTheme,
    floatingActionButtonTheme: _fabTheme,
    inputDecorationTheme: _inputTheme,
    chipTheme: _chipTheme,
    navigationBarTheme: _navigationBarTheme,
    tabBarTheme: _tabBarTheme,
    dividerTheme: _dividerTheme,
    switchTheme: _switchTheme,
    checkboxTheme: _checkboxTheme,
    snackBarTheme: _snackBarTheme,
    badgeTheme: _badgeTheme,
  );

  // ── ColorScheme ─────────────────────────────────────────────────
  static const _colorScheme = ColorScheme(
    brightness: Brightness.light,

    primary: AppThemeTokens.brandDark,
    onPrimary: AppThemeTokens.brandAccent,
    primaryContainer: AppThemeTokens.brandAccent,
    onPrimaryContainer: AppThemeTokens.brandDark,

    secondary: Color(0xFF4A6B65),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFCDE8E3),
    onSecondaryContainer: AppThemeTokens.brandDark,

    tertiary: AppThemeTokens.amberOnLight,
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: AppThemeTokens.amberContainerLight,
    onTertiaryContainer: Color(0xFF3D2000),

    error: AppThemeTokens.errorLight,
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),

    surface: AppThemeTokens.surface50,
    onSurface: AppThemeTokens.neutral900,
    surfaceContainerLowest: Color(0xFFFFFFFF),
    surfaceContainerLow: AppThemeTokens.surface50,
    surfaceContainer: AppThemeTokens.surface100,
    surfaceContainerHigh: AppThemeTokens.surface200,
    surfaceContainerHighest: Color(0xFFDDE8E6),
    onSurfaceVariant: Color(0xFF4A6B65),

    outline: Color(0x400E1A19),
    outlineVariant: Color(0x200E1A19),

    inverseSurface: AppThemeTokens.neutral800,
    onInverseSurface: AppThemeTokens.neutral100,
    inversePrimary: AppThemeTokens.brandAccent,

    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    surfaceTint: AppThemeTokens.brandDark,
  );

  // ── AppBar ───────────────────────────────────────────────────────
  static const _appBarTheme = AppBarThemeData(
    backgroundColor: Color(0xFFFFFFFF),
    foregroundColor: AppThemeTokens.neutral900,
    elevation: 0,
    scrolledUnderElevation: 1,
    surfaceTintColor: Colors.transparent,
  );

  // ── Card ─────────────────────────────────────────────────────────
  static final _cardTheme = CardThemeData(
    color: Colors.white,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
      side: const BorderSide(color: Color(0x120E1A19)),
    ),
  );

  // ── Dialog ───────────────────────────────────────────────────────
  static final _dialogTheme = DialogThemeData(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
  );

  // ── ElevatedButton ───────────────────────────────────────────────
  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppThemeTokens.brandDark,
      foregroundColor: AppThemeTokens.brandAccent,
      elevation: 0,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  );

  // ── OutlinedButton ───────────────────────────────────────────────
  static final _outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppThemeTokens.neutral900,
      side: const BorderSide(color: Color(0x400E1A19)),
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  );

  // ── TextButton ───────────────────────────────────────────────────
  static final _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: AppThemeTokens.brandDark),
  );

  // ── FAB ──────────────────────────────────────────────────────────
  static const _fabTheme = FloatingActionButtonThemeData(
    backgroundColor: AppThemeTokens.brandDark,
    foregroundColor: AppThemeTokens.brandAccent,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  );

  // ── Input ────────────────────────────────────────────────────────
  static final _inputTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppThemeTokens.surface100,
    hintStyle: const TextStyle(color: Color(0xFF8FA39F)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppThemeTokens.brandDark),
    ),
  );

  // ── Chip ─────────────────────────────────────────────────────────
  static final _chipTheme = ChipThemeData(
    backgroundColor: AppThemeTokens.surface100,
    labelStyle: const TextStyle(color: AppThemeTokens.neutral900, fontSize: 13),
    side: const BorderSide(color: Color(0x200E1A19)),
    shape: const StadiumBorder(),
  );

  // ── NavigationBar ────────────────────────────────────────────────
  static final _navigationBarTheme = NavigationBarThemeData(
    backgroundColor: Colors.white,
    indicatorColor: const Color(0x15012928),
    iconTheme: WidgetStateProperty.resolveWith(
      (s) => IconThemeData(
        color: s.contains(WidgetState.selected)
            ? AppThemeTokens.brandDark
            : const Color(0xFF8FA39F),
      ),
    ),
    labelTextStyle: WidgetStateProperty.resolveWith(
      (s) => TextStyle(
        color: s.contains(WidgetState.selected)
            ? AppThemeTokens.brandDark
            : const Color(0xFF8FA39F),
        fontSize: 12,
      ),
    ),
  );

  // ── TabBar ───────────────────────────────────────────────────────
  static const _tabBarTheme = TabBarThemeData(
    labelColor: AppThemeTokens.brandDark,
    unselectedLabelColor: Color(0xFF8FA39F),
    indicatorColor: AppThemeTokens.brandDark,
  );

  // ── Divider ──────────────────────────────────────────────────────
  static const _dividerTheme = DividerThemeData(
    color: Color(0x150E1A19),
    thickness: 0.5,
  );

  // ── Switch ───────────────────────────────────────────────────────
  static final _switchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith(
      (s) => s.contains(WidgetState.selected)
          ? AppThemeTokens.brandAccent
          : const Color(0xFFB0CAC6),
    ),
    trackColor: WidgetStateProperty.resolveWith(
      (s) => s.contains(WidgetState.selected)
          ? AppThemeTokens.brandDark
          : AppThemeTokens.surface200,
    ),
  );

  // ── Checkbox ─────────────────────────────────────────────────────
  static final _checkboxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith(
      (s) => s.contains(WidgetState.selected)
          ? AppThemeTokens.brandDark
          : Colors.transparent,
    ),
    checkColor: WidgetStateProperty.all(AppThemeTokens.brandAccent),
    side: const BorderSide(color: Color(0xFF8FA39F)),
  );

  // ── SnackBar ─────────────────────────────────────────────────────
  static const _snackBarTheme = SnackBarThemeData(
    backgroundColor: AppThemeTokens.neutral800,
    contentTextStyle: TextStyle(color: AppThemeTokens.neutral100),
    actionTextColor: AppThemeTokens.brandAccent,
    behavior: SnackBarBehavior.floating,
    shape: StadiumBorder(),
  );

  // ── Badge ────────────────────────────────────────────────────────
  static const _badgeTheme = BadgeThemeData(
    backgroundColor: AppThemeTokens.brandDark,
    textColor: AppThemeTokens.brandAccent,
  );
}
