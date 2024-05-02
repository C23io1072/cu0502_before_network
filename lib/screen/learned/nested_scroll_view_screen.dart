import 'package:flutter/material.dart';
import 'package:sem2/screen/learned/nested_scroll_view.dart';

class NestedScrollViewScreen extends StatelessWidget {
  const NestedScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NestedScrollView Screen'),
        ),
        body: MyNestedScrollView());
  }
}
