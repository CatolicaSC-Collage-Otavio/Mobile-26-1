import 'package:animalbeats/theme/base_theme.dart';
import 'package:flutter/material.dart';

abstract class AppDarkTheme {
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    colorScheme: _colorScheme,
    scaffoldBackgroundColor: AppThemeTokens.neutral900,
    canvasColor: AppThemeTokens.neutral900,
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
    brightness: Brightness.dark,

    primary: AppThemeTokens.brandAccent,
    onPrimary: AppThemeTokens.brandDark,
    primaryContainer: Color(0xFF013D3B),
    onPrimaryContainer: AppThemeTokens.brandAccent,

    secondary: AppThemeTokens.neutral300,
    onSecondary: AppThemeTokens.neutral900,
    secondaryContainer: AppThemeTokens.neutral700,
    onSecondaryContainer: AppThemeTokens.neutral100,

    tertiary: AppThemeTokens.amber,
    onTertiary: AppThemeTokens.amberOnDark,
    tertiaryContainer: AppThemeTokens.amberContainerDark,
    onTertiaryContainer: AppThemeTokens.amber,

    error: AppThemeTokens.errorDark,
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF3D0808),
    onErrorContainer: Color(0xFFFFDAD6),

    surface: AppThemeTokens.neutral800,
    onSurface: AppThemeTokens.neutral100,
    surfaceContainerLowest: AppThemeTokens.neutral900,
    surfaceContainerLow: AppThemeTokens.neutral800,
    surfaceContainer: AppThemeTokens.neutral700,
    surfaceContainerHigh: AppThemeTokens.neutral600,
    surfaceContainerHighest: AppThemeTokens.neutral600,
    onSurfaceVariant: AppThemeTokens.neutral300,

    outline: Color(0x30FFFFFF),
    outlineVariant: Color(0x18FFFFFF),

    inverseSurface: AppThemeTokens.neutral100,
    onInverseSurface: AppThemeTokens.neutral900,
    inversePrimary: AppThemeTokens.brandDark,

    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    surfaceTint: AppThemeTokens.brandAccent,
  );

  // ── AppBar ───────────────────────────────────────────────────────
  static const _appBarTheme = AppBarThemeData(
    backgroundColor: AppThemeTokens.neutral900,
    foregroundColor: AppThemeTokens.neutral100,
    elevation: 0,
    scrolledUnderElevation: 1,
    surfaceTintColor: Colors.transparent,
  );

  // ── Card ─────────────────────────────────────────────────────────
  static final _cardTheme = CardThemeData(
    color: AppThemeTokens.neutral800,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  );

  // ── Dialog ───────────────────────────────────────────────────────
  static final _dialogTheme = DialogThemeData(
    backgroundColor: AppThemeTokens.neutral800,
    surfaceTintColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
  );

  // ── ElevatedButton ───────────────────────────────────────────────
  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppThemeTokens.brandAccent,
      foregroundColor: AppThemeTokens.brandDark,
      elevation: 0,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  );

  // ── OutlinedButton ───────────────────────────────────────────────
  static final _outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppThemeTokens.neutral100,
      side: const BorderSide(color: Color(0x50FFFFFF)),
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  );

  // ── TextButton ───────────────────────────────────────────────────
  static final _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: AppThemeTokens.brandAccent),
  );

  // ── FAB ──────────────────────────────────────────────────────────
  static const _fabTheme = FloatingActionButtonThemeData(
    backgroundColor: AppThemeTokens.brandAccent,
    foregroundColor: AppThemeTokens.brandDark,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  );

  // ── Input ────────────────────────────────────────────────────────
  static final _inputTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppThemeTokens.neutral700,
    hintStyle: const TextStyle(color: AppThemeTokens.neutral400),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppThemeTokens.brandAccent),
    ),
  );

  // ── Chip ─────────────────────────────────────────────────────────
  static final _chipTheme = ChipThemeData(
    backgroundColor: AppThemeTokens.neutral700,
    labelStyle: const TextStyle(color: AppThemeTokens.neutral100, fontSize: 13),
    side: const BorderSide(color: Color(0x20FFFFFF)),
    shape: const StadiumBorder(),
  );

  // ── NavigationBar ────────────────────────────────────────────────
  static final _navigationBarTheme = NavigationBarThemeData(
    backgroundColor: AppThemeTokens.neutral800,
    indicatorColor: const Color(0x2501FBA1),
    iconTheme: WidgetStateProperty.resolveWith(
      (s) => IconThemeData(
        color: s.contains(WidgetState.selected)
            ? AppThemeTokens.brandAccent
            : AppThemeTokens.neutral400,
      ),
    ),
    labelTextStyle: WidgetStateProperty.resolveWith(
      (s) => TextStyle(
        color: s.contains(WidgetState.selected)
            ? AppThemeTokens.brandAccent
            : AppThemeTokens.neutral400,
        fontSize: 12,
      ),
    ),
  );

  // ── TabBar ───────────────────────────────────────────────────────
  static const _tabBarTheme = TabBarThemeData(
    labelColor: AppThemeTokens.brandAccent,
    unselectedLabelColor: AppThemeTokens.neutral400,
    indicatorColor: AppThemeTokens.brandAccent,
  );

  // ── Divider ──────────────────────────────────────────────────────
  static const _dividerTheme = DividerThemeData(
    color: Color(0x15FFFFFF),
    thickness: 0.5,
  );

  // ── Switch ───────────────────────────────────────────────────────
  static final _switchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith(
      (s) => s.contains(WidgetState.selected)
          ? AppThemeTokens.brandDark
          : AppThemeTokens.neutral400,
    ),
    trackColor: WidgetStateProperty.resolveWith(
      (s) => s.contains(WidgetState.selected)
          ? AppThemeTokens.brandAccent
          : AppThemeTokens.neutral700,
    ),
  );

  // ── Checkbox ─────────────────────────────────────────────────────
  static final _checkboxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith(
      (s) => s.contains(WidgetState.selected)
          ? AppThemeTokens.brandAccent
          : Colors.transparent,
    ),
    checkColor: WidgetStateProperty.all(AppThemeTokens.brandDark),
    side: const BorderSide(color: AppThemeTokens.neutral400),
  );

  // ── SnackBar ─────────────────────────────────────────────────────
  static const _snackBarTheme = SnackBarThemeData(
    backgroundColor: AppThemeTokens.neutral700,
    contentTextStyle: TextStyle(color: AppThemeTokens.neutral100),
    actionTextColor: AppThemeTokens.brandAccent,
    behavior: SnackBarBehavior.floating,
    shape: StadiumBorder(),
  );

  // ── Badge ────────────────────────────────────────────────────────
  static const _badgeTheme = BadgeThemeData(
    backgroundColor: AppThemeTokens.brandAccent,
    textColor: AppThemeTokens.brandDark,
  );
}
