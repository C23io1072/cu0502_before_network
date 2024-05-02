import 'package:flutter/material.dart';
import 'package:sem2/screen/widget/profile_emongol_trail.dart';

class ProfileEMongoliaListTile extends StatelessWidget {
  const ProfileEMongoliaListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            shape: BoxShape.rectangle),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        child: Material(
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            visualDensity: const VisualDensity(horizontal: 0, vertical: 4),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.white.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/images/e_mongolia.png',
              ),
            ),
            title: const Text(
              'E-Mongolia холбо',
              style: TextStyle(fontSize: 18),
            ),
            // trailing: const Icon(
            //   Icons.keyboard_arrow_right_sharp,
            // ),
            trailing: emongoliatrail(context),
            // subtitle: const Text('This is subti'),
            selected: true,
            onTap: () {
              print('object');
            },
          ),
        ));
  }
}
