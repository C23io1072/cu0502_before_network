import 'package:flutter/material.dart';

class FlagList extends StatelessWidget {
  const FlagList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(7, (index) => index);
    return Container(
      height: 90,
      color: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: items.map((e) {
            return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border:
                      Border.all(width: 3, color: Colors.grey.withOpacity(0.3)),
                ),
                height: 80,
                width: 90,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.flag_outlined,
                      color: Colors.grey.withOpacity(0.7),
                      size: 30,
                    ),
                    Text(
                      '3+1',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600], fontSize: 18),
                    ),
                  ],
                ));
          }).toList()),
    );
  }
}
