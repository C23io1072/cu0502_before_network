import 'package:flutter/material.dart';
import 'package:sem2/screen/widget/appbar_settings_screen.dart';

class ChangePhoneScreen extends StatefulWidget {
  const ChangePhoneScreen({super.key});

  @override
  State<ChangePhoneScreen> createState() => _ChangePhoneScreenState();
}

class _ChangePhoneScreenState extends State<ChangePhoneScreen> {
  String inputText = '';

  final textController = TextEditingController();
  var data = '';

  @override
  void initState() {
    super.initState();
    // textController.text = 'Amraa'; //default value
    textController.addListener(() {
      print(textController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    // final items = List.generate(4, (index) => index);

    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: appbarsetting(context, 'Утасны дугаар солих')),
      body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),

          // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          margin: const EdgeInsets.only(top: 10.0),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Шинэ утасны дугаар:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: textController,
                    style: const TextStyle(fontSize: 24),
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 244, 244, 243),
                        border: OutlineInputBorder(),
                        hintText: 'Утасны дугаар',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black26,
                        )),
                    //onPressed no need if add.listener used above
                    // onChanged: (value) {
                    //   setState(() {
                    //     inputText = value;
                    //   });
                    //   data = value;
                    // },
                  ),
                  Text(textController.text),
                ],
              ),
              // const ProfileEMongoliaListTile(),
              //exit SettingScreen session **************************
              // const SizedBox(height: 100),
              Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor:
                              const Color.fromARGB(255, 185, 191, 203),
                          fixedSize: const Size(380, 60)),
                      onPressed: () {
                        // Navigator.pop(context);
                        // Navigator.of(context)
                        //     .pop<String>('Poped with string data');
                        print(textController.text);
                      },
                      child: const Text(
                        'Солих',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )),
                  const SizedBox(height: 10),
                ],
              )
            ],
          )),
    );
  }
}
