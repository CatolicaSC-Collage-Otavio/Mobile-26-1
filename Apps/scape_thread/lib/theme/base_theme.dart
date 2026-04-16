import 'package:flutter/material.dart';

abstract class AppThemeTokens {
  // ── Brand ────────────────────────────────────────────────────────
  static const brandDark = Color(0xFF012928);
  static const brandAccent = Color(0xFF01FBA1);

  // ── Neutros escuros (dark surfaces) ─────────────────────────────
  static const neutral900 = Color(0xFF0E1A19);
  static const neutral800 = Color(0xFF182521);
  static const neutral700 = Color(0xFF1E2D2B);
  static const neutral600 = Color(0xFF25403C);
  static const neutral400 = Color(0xFF4A6B65);
  static const neutral300 = Color(0xFF8FA39F);
  static const neutral100 = Color(0xFFD8EDE8);

  // ── Neutros claros (light surfaces) ─────────────────────────────
  static const surface50 = Color(0xFFF4F7F6);
  static const surface100 = Color(0xFFEEF3F2);
  static const surface200 = Color(0xFFE8F0EE);

  // ── Terciária — âmbar (alertas, despesas, avisos) ────────────────
  static const amber = Color(0xFFFFC97A);
  static const amberContainerDark = Color(0xFF3D2E10);
  static const amberContainerLight = Color(0xFFFFE0B2);
  static const amberOnLight = Color(0xFF8C5800);
  static const amberOnDark = Color(0xFF251E18);

  // ── Info — azul (sync, links, notificações) ──────────────────────
  static const blue = Color(0xFF7AB8FF);
  static const blueDark = Color(0xFF4A90D9);

  // ── Erro ─────────────────────────────────────────────────────────
  static const errorDark = Color(0xFFFF8378);
  static const errorLight = Color(0xFFBA1A1A);
}
