import 'package:flutter/material.dart';

class MyAlertDialog0 extends StatelessWidget {
  const MyAlertDialog0({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('AlertDialog title'),
                content: const Text('AlertDialog description'),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel')),
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'Ok'),
                      child: const Text('Ok'))
                ],
              ),
            ),
        child: const Text('Show Dialog'));
  }
}
