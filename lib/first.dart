import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
String str='j f f j f   j j j j j  f f f f f';

  Widget getCustom({text, color, flex}) {
    return Expanded(
      flex: flex ?? 1,
        child: Container(
      color: color,
      child: Text(text.toString()),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'typing tutor',
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: const Text('j f f j f   j j j j j  f f f f f',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      )),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      getCustom(text: 'tab', color: Colors.blue),
                      getCustom(text: 'q', color: Colors.blue),
                      getCustom(text: 'w', color: Colors.blue),
                      getCustom(text: 'e', color: Colors.blue),
                      getCustom(text: 'r', color: Colors.blue),
                      getCustom(text: 't', color: Colors.blue),
                      getCustom(text: 'y', color: Colors.blue),
                      getCustom(text: 'u', color: Colors.blue),
                      getCustom(text: 'i', color: Colors.blue),
                      getCustom(text: 'o', color: Colors.blue),
                      getCustom(text: 'p', color: Colors.blue),
                      getCustom(text: '[', color: Colors.blue),
                      getCustom(text: ']', color: Colors.blue),
                      getCustom(text: "|", color: Colors.blue),
                    ],
                  )),
                  Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      getCustom(text: 'cap', color: Colors.blue,flex: 2),
                      getCustom(text: 'a', color: Colors.blue),
                      getCustom(text: 's', color: Colors.blue),
                      getCustom(text: 'd', color: Colors.blue),
                      getCustom(text: 'f', color: Colors.blue),
                      getCustom(text: 'g', color: Colors.blue),
                      getCustom(text: 'h', color: Colors.blue),
                      getCustom(text: 'j', color: Colors.blue),
                      getCustom(text: 'k', color: Colors.blue),
                      getCustom(text: 'l', color: Colors.blue),
                      getCustom(text: ';', color: Colors.blue),
                      getCustom(text: "'", color: Colors.blue),
                      getCustom(text: 'enter', color: Colors.blue,flex: 2),
                    ],
                  )),
                  Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          getCustom(text: 'shift', color: Colors.blue,flex: 2),
                          getCustom(text: 'z', color: Colors.blue),
                          getCustom(text: 'x', color: Colors.blue),
                          getCustom(text: 'c', color: Colors.blue),
                          getCustom(text: 'v', color: Colors.blue),
                          getCustom(text: 'b', color: Colors.blue),
                          getCustom(text: 'n', color: Colors.blue),
                          getCustom(text: 'm', color: Colors.blue),
                          getCustom(text: '<', color: Colors.blue),
                          getCustom(text: '>', color: Colors.blue),
                          getCustom(text: '/', color: Colors.blue),
                          getCustom(text: "shift", color: Colors.blue,flex: 2),
                        ],
                      ))
                ],
              ))
            ],
          ),
        ));
  }
}
