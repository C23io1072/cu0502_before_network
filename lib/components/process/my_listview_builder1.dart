import 'package:flutter/material.dart';

class MyListViewBuilder1 extends StatelessWidget {
  const MyListViewBuilder1({super.key});

  @override
  Widget build(BuildContext context) {
    // final items = List.generate(7, (index) => index);
    final items = List<String>.generate(10, (i) => 'Item $i');
    return ListView.builder(
      itemCount: items.length,
      prototypeItem: ListTile(
        title: Text(items.first),
      ),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );
  }
}
