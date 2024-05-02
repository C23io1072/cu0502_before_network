import 'package:flutter/material.dart';

class MyNetworkRequestScreen extends StatefulWidget {
  const MyNetworkRequestScreen({super.key});

  @override
  State<MyNetworkRequestScreen> createState() => _MyNetworkRequestScreenState();
}

class _MyNetworkRequestScreenState extends State<MyNetworkRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network request'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
