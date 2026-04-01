import 'package:animalbeats/components/bottom_sheet.dart';
import 'package:animalbeats/theme/animal_beats_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal Beats',
      theme: AppLightTheme.theme,
      darkTheme: AppDarkTheme.theme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Animal Beats Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> animalList = [
    'Bella',
    'Puppy',
    'Leia',
    'Ragnar',
    'Luke',
    'Sexta',
    'Jake',
    'Bangue',
    'Nenem',
    'Gorda',
    'Pepsi',
    'Coca',
    'Bella',
    'Puppy',
    'Leia',
    'Ragnar',
    'Luke',
    'Sexta',
    'Jake',
    'Bangue',
    'Nenem',
    'Gorda',
    'Pepsi',
    'Coca',
    'Bella',
    'Puppy',
    'Leia',
    'Ragnar',
    'Luke',
    'Sexta',
    'Jake',
    'Bangue',
    'Nenem',
    'Gorda',
    'Pepsi',
    'Coca',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: animalList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(animalList[index]),
                subtitle: Text('Descrição do animal ${animalList[index]}'),
                isThreeLine: true,
                leading: CircleAvatar(child: Icon(Icons.pets)),
                onTap: () => {abrirMenuGigante(context)},
                minTileHeight: 150,
              ),
            );
          },
        ),
      ),
      // bottomSheet: ,
    );
  }
}
