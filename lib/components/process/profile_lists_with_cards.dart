import 'package:flutter/material.dart';

class ProfileListsWithCards extends StatelessWidget {
  const ProfileListsWithCards({super.key});
  @override
  Widget build(BuildContext context) {
    // Sample data for three lists
    List<List<String>> listsData = [
      [
        'Төлбөрийн хэрэгсэлүүд',
        'Судалгаа бөглөх',
        'E-barimt холбох',
        'Тохиргоо'
      ],
    ];

    return ListView.builder(
      itemCount: listsData.length,
      itemBuilder: (context, index) {
        return CardList(listData: listsData[index]);
      },
    );
  }
}

class CardList extends StatelessWidget {
  final List<String> listData;

  CardList({required this.listData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text('List ${listData[0]}'),
          ),
          Divider(),
          ListView.builder(
            itemCount: listData.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listData[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
