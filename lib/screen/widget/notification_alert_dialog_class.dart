import 'package:flutter/material.dart';

Widget alertdialog(String title, String description, String cancelLabel,
    String okLabel, BuildContext context) {
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
