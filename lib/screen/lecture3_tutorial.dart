import 'package:flutter/material.dart';

class Lecture3Tutorial extends StatelessWidget {
  const Lecture3Tutorial({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //     title: const Text('Lecture 3 '),
  //   ));
  //final textController = TextEditingController();
  // @override
  // void initState() {
  //   super.initState();
  //   textController.text = 'Set value';
  // textController.addListener(() {
  //   print(textController.text);
  // });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecture 33'),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 5, color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          offset: Offset(0, 0),
                          blurRadius: 10)
                    ]),
              ),
              // Text widget
              Text('Text widget',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
            ],
          ),

          Text('Text styling from MaterialApp',
              style: Theme.of(context).textTheme.headlineMedium),
          Text('Text styling from MaterialApp: only change color',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.red)),
          // Button widget
          ElevatedButton(
              onPressed: () {
                print('Test');
              },
              child: Row(
                children: [
                  Text('ElevatedButtonn'),
                  const Icon(Icons.access_alarm)
                ],
              )),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     //Gadnaas ni utga ugie gebel 25.51 controller
          //     controller: textController,
          //     decoration: InputDecoration(
          //         hintText: 'Enter name', border: OutlineInputBorder()),
          //     onChanged: (value) {
          //       print(value);
          //     },
          //   ),
          // )
          Row(
            children: [
              SizedBox(
                  width: 300,
                  height: 70,
                  child: Container(
                    color: Colors.blue,
                    child:
                        Text('SizedBox=> size given: width: 300, height: 40'),
                  )),
              SizedBox.square(
                dimension: 70,
                child: Container(
                    color: Colors.amber,
                    child: Column(
                      children: [Text('SizedBox'), Text('square')],
                    )),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    width: 150,
                    height: 60,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Colors.green,
                            child: Text('Align: topLeft'),
                          ),
                        ),
                        Text('with Padding')
                      ],
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 130,
                        height: 30,
                        color: Colors.green,
                        child: Text('Align: bottomRight'),
                      ),
                    ),
                  )),
            ],
          ),
//AspectRatio
          Row(
            children: [
              Column(
                children: [
                  Text('AspectRatio: 2'),
                  Container(
                    width: 110,
                    height: 70,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: AspectRatio(
                        aspectRatio: 2,
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Colors.amber,
                          alignment: Alignment.center,
                          child: Text('Урт нь 2 дахин их'),
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('AspectRatio: 4'),
                  Container(
                    width: 110,
                    height: 70,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: AspectRatio(
                        aspectRatio: 4,
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Colors.amber,
                          alignment: Alignment.center,
                          child: Text('4 дахин их'),
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('AspectRatio: 0.5'),
                  Container(
                    width: 110,
                    height: 70,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: AspectRatio(
                        aspectRatio: 0.5,
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Colors.amber,
                          alignment: Alignment.center,
                        )),
                  ),
                ],
              )
            ],
          ),

          Row(
            children: [
              Column(
                children: [
                  Text(
                    'FractionallySizedBox',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 140,
                    height: 80,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: FractionallySizedBox(
                        widthFactor: 0.5,
                        heightFactor: 0.5,
                        child: Container(
                          color: Colors.amber,
                          alignment: Alignment.center,
                          child: Text('Factor 0.55'),
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('AspectRatio: 4'),
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: AspectRatio(
                            aspectRatio: 4,
                            child: Container(
                              width: 40,
                              height: 40,
                              color: Colors.amber,
                              alignment: Alignment.center,
                              child: Text('4 дахин их'),
                            )),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('AspectRatio: 0.5'),
                      Container(
                        width: 110,
                        height: 70,
                        color: Colors.black,
                        alignment: Alignment.center,
                        child: AspectRatio(
                            aspectRatio: 0.5,
                            child: Container(
                              width: 40,
                              height: 40,
                              color: Colors.amber,
                              alignment: Alignment.center,
                            )),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [Text('Test')],
          ),
          SizedBox(
              height: 50,
              width: 50,
              child: Container(
                color: Colors.amber,
              ))
        ],
      )),
    );
  }
}
