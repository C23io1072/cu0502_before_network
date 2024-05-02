import 'package:flutter/material.dart';
import 'package:sem2/screen/point_history_screen1.dart';
import 'package:sem2/screen/promotion_screen.dart';
import 'package:sem2/screen/promotion_screen1.dart';

class UsePointItemCopy extends StatelessWidget {
  const UsePointItemCopy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PromotionScreen()),
        );
      },
      child: Container(
        height: 45,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.purple,
          border: Border.all(
            width: 2,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Icon(Icons.keyboard_arrow_left_sharp, color: Colors.white),
            ),
          ],
        ),
      ),
    ));
  }
}
