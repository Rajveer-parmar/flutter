import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class Demo_1 extends StatefulWidget {
  @override
  State<Demo_1> createState() => _Demo_1State();
}

// ignore: camel_case_types
class _Demo_1State extends State<Demo_1> {
  String st = 'jjjjf fff';
  var co = Colors.red;
  int count = 0;

  Widget getSpan({text, color}) {
    return Row(children: [
      Text(
        text.toString() ?? '',
        style: TextStyle(color: color ?? Colors.blue, fontSize: 50),
      ),
    ]);
  }

  List<Widget> getSplitValue(String str) {
    List<Widget> list = [];
    for (int i = 0; i < str.length; i++) {
      list.add(getSpan(text: str[i], color: Colors.black));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) => RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        if (event is RawKeyUpEvent) {
          if (event.logicalKey.keyLabel.toString().toLowerCase() == st[count]) {
            print(event.logicalKey.keyLabel);
            print(count);

            count++;
          } else {
            print('no');
            //   print(st[count]);
          }
        }
      },
      child: MaterialApp(
        home: Scaffold(
          body: Row(children: [
            Expanded(
                child: Row(
              children: [Text('data')],
            ))
          ]),
        ),
      ));
}
