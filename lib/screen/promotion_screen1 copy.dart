import 'package:flutter/material.dart';
import 'package:sem2/screen/point_history_screen.dart';
import 'package:sem2/screen/widget/point_history_listtile.dart';
import 'package:sem2/screen/widget/profile_emongol_trail.dart';
import 'package:sem2/screen/widget/profile_emongolia_listtile.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Promotion!'),
        ),
        backgroundColor: Colors.grey[100],
        body: const PointHistoryListTile());
  }
}
