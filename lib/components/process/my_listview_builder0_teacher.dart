import 'package:flutter/material.dart';

class ListViewBuilderTeacher extends StatelessWidget {
  const ListViewBuilderTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = List.generate(100, (index) => index);
    return ListView.builder(
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text(listItem[index].toString()),
        );
      }),
    );
  }
}
