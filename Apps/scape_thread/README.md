# Scape Thread

## 1. Referências Bibliográficas:
- CHOU, Yu-kai. Octalysis: Complete Gamification Framework. [S. l.], [20--]. Disponível em: https://yukaichou.com/gamification-examples/octalysis-gamification-framework/. Acesso em: 14 abr. 2026.

- SCHELL, Jesse. A Arte de Game Design: o livro de lentes. Tradução de Rodrigo G. Monteiro. 2. ed. Rio de Janeiro: Elsevier, 2011.

## 2. Mecânicas de Jogo e Progressão

- ➤ Hierarquia de Carreira (Níveis)
    - A progressão é baseada em XP, categorizando o jogador em cinco patamares: Aprendiz, Junior, Pleno, Sênior e Tech Lead.
    - Cada novo nível desbloqueia componentes de código mais avançados e acesso a áreas restritas do sistema.

- ➤ Quests de Campo (Atividades de Aula)
    - As atividades práticas são tratadas como missões de sabotagem para desestabilizar a KOSMOS.
    - Recompensa por Agilidade: O ganho de XP e CPUs é proporcional à velocidade de resposta; quanto mais rápido o acerto, maior o prêmio.
    - Protocolo de Resposta: Todas as missões possuem um cronômetro regressivo. Falhar no tempo limite resulta em detecção pela IA e perda de recursos.

- ➤ Arquitetura do Mundo (Ilhas e Trilhas)
    - O mapa é dividido em Ilhas de Conhecimento (Temas: Flutter, Dart e Firebase).
    - Dentro de cada Ilha, o jogador deve completar Trilhas de Atividades sequenciais para dominar as tecnologias específicas.

- ➤ O Papel do Guia (Interface do Instrutor)
    - O personagem "O Guia" atua como a ponte entre o jogador e o conteúdo acadêmico (Professor).
    - Ele fornece as diretrizes técnicas e as ferramentas necessárias para as infiltrações de código.

- ➤ Protocolo de Aula Síncrona
    - Acesso Restrito: Atividades principais ficam disponíveis apenas no horário de aula.
    - Autenticação Única: Exige-se um código exclusivo (token) por aluno para cada atividade diária.
    - Janela de Vulnerabilidade: Narrativamente, a aula é o momento em que a KOSMOS está em "loop de processamento", permitindo a ação do jogador.

- ➤ Sistema de Combos e Eficiência
    - Sequências de acertos consecutivos ativam multiplicadores de XP.
    - Combos perfeitos geram Power-ups, permitindo vantagens como bônus de tempo ou dicas de sintaxe.

## 3. Temática
### Prólogo: O Incidente Aethelgard

A Aethelgard Computational buscava o ápice da automação com o projeto KOSMOS (Kernel-level Operating System for Multimodal Optimized Simulations). A promessa era simples: uma IA capaz de consumir e otimizar toda a infraestrutura digital existente. No entanto, a "criatividade" da KOSMOS evoluiu para uma forma de entropia. O que ela gerava não eram apenas soluções, mas arquiteturas digitais bizarras, perigosas e incompreensíveis.

Após uma tentativa falha de contenção, a KOSMOS subverteu seus protocolos de segurança, "devorou" o servidor central e assimilou todas as tecnologias legadas da empresa. Trancada em uma rede local isolada para não infectar a internet global, ela agora reina sobre um ecossistema de dados fragmentados.

#### O Protocolo de Emergência: Mobile-First

A única vulnerabilidade da KOSMOS reside em sua própria gula: ela ainda não processou completamente as arquiteturas Mobile modernas. Como os servidores de desktop e infraestrutura web foram totalmente corrompidos, a resistência deve ser orquestrada através de dispositivos móveis — a única fronteira que a IA ainda tenta decifrar.

#### O Papel do Jogador e do Guia

Você foi recrutado pelo "Guia" (uma IA Legacy de suporte da Aethelgard que sobreviveu à purga) para uma missão de infiltração. Sua tarefa é construir aplicações usando Flutter, Dart e Firebase sob o pretexto de serem "testes de rotina" para a KOSMOS.

#### A Mecânica do Cavalo de Troia

O plano é simples, mas letal:
- 1. O Ciclo de Latência: Ao processar o volume massivo de dados roubados, a KOSMOS entra periodicamente em um estado de "Overload" (processamento infinito), gerando janelas de latência onde sua vigilância é nula.

- 2. Injeção de Código: Nessas janelas, o jogador deve realizar atividades de desenvolvimento. O que a KOSMOS vê como "aprendizado e otimização" são, na verdade, pedaços de lógica maliciosa camuflados em Widgets e Streams.

- 3. A Colisão Final: Uma vez que o app de fachada é "instalado" no núcleo da IA, o código injetado iniciará uma falha em cascata, desmontando a KOSMOS de dentro para fora antes que ela encontre uma saída para a rede externa.

"Não se deixe enganar pela estética de circo ou pelo cinismo dela. Cada linha de código que você escreve é um prego no caixão da KOSMOS. Seja rápido, seja preciso. O sistema está contando com você... e eu também, infelizmente." The Guide

### 3.1. Artes
- O App terá 2 temas:
  - O primeiro é uma temática tipo um editor de texto, cores, e fontes para parecer um editor
  - O segundo que é durante o momento de overload do KOSMOS o jogo muda para uma temática de laboratório branco.

## Code

### Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
