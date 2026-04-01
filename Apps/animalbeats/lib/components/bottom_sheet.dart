import 'package:flutter/material.dart';

void abrirMenuGigante(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.95,
        child: Column(
          children: [
            const Icon(Icons.drag_handle, color: Colors.grey),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Menu Expandido",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) =>
                    ListTile(title: Text("Item $index")),
              ),
            ),
          ],
        ),
      );
    },
  );
}
