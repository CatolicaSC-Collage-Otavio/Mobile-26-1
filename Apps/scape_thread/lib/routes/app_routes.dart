import 'package:flutter/material.dart';

import 'package:scape_thread/screens/home.dart';
import 'package:scape_thread/screens/login.dart';

class AppRoutes {
  // Dica: Variáveis estáticas para os nomes das rotas evitam erros de digitação.
  static const String home = '/';
  static const String login = '/login';

  // Mapa que liga os nomes das rotas aos construtores de tela.
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(title: 'Animal Beats Home Page'),
      login: (context) => const LoginScreen(),
    };
  }
}

/* NOTA 1:
* Se você usa o texto direto em vários lugares (Navigator.pushNamed(context, '/details'))
*  e em um deles você digita '/detils' sem querer, o compilador do Dart não vai avisar
* sobre o erro. O aplicativo vai compilar normalmente e só vai quebrar (gerando um erro
*  de rota não encontrada) quando o usuário clicar no botão em tempo de execução.
*
*  Ao usar a variável AppRoutes.details, se você digitar o nome da
* variável errado, a sua IDE acusa o erro na mesma hora (Erro de Compilação).
* O código sequer roda.
* */

/* NOTA 2:

por que chamar os nomes das rotas como parâmetro dentro do Map?

O MaterialApp, exige obrigatoriamente que a sua propriedade routes receba um tipo muito
específico de dado: um Map<String, WidgetBuilder>. Ele precisa desse dicionário para
saber qual widget construir quando uma determinada string for chamada.

Ao usar as variáveis estáticas como as chaves desse mapa:
return {
  home: (context) => const HomeScreen(),
  details: (context) => const DetailsScreen(),
};
Nós "amarramos" a configuração perfeitamente. Garantimos que a chave que o MaterialApp
está registrando no terminal central é matematicamente idêntica à variável que os
desenvolvedores usarão nos botões espalhados pelo app. Isso cria um contrato inquebrável
entre a declaração da rota e a chamada dela.
 */
