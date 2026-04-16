import 'package:scape_thread/routes/app_routes.dart';
import 'package:scape_thread/screens/not_found.dart';
import 'package:scape_thread/theme/dark_theme.dart';
import 'package:scape_thread/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scape Thread',
      theme: AppLightTheme.theme,
      darkTheme: AppDarkTheme.theme,
      themeMode: ThemeMode.system,

      // Define a estação de partida
      initialRoute: AppRoutes.login,

      // Pluga o arquivo de rotas
      routes: AppRoutes.getRoutes(),

      // Válvula de segurança: o que acontece se a rota não existir?
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const NotFoundScreen());
      },
    );
  }
}
