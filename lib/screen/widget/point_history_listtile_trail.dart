import 'package:flutter/material.dart';

class PointHistoryListTileTrail extends StatelessWidget {
  const PointHistoryListTileTrail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        width: 68,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 132, 80, 227),
          border: Border.all(
            width: 2,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '+500',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Image.asset(
              'assets/images/circle_gradient2.png',
              height: 18,
              width: 18,
            ),
          ],
        ));
  }
}
