import 'package:flutter/material.dart';
import 'package:scape_thread/components/bottom_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> animalList = [
    'Widgets',
    'Functions',
    'Variables',
    'Async Functions',
    'Storage',
    'Model',
    'Connectors',
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
                subtitle: Text('Ilha ${animalList[index]}'),
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
